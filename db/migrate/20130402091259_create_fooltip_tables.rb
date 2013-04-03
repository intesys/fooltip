class CreateFooltipTables < ActiveRecord::Migration

  def up
    create_table :fooltip_containers do |t|
      t.string :image
      t.timestamps
    end
    Fooltip::Container.create_translation_table!({
      title: :string,
      description: :text
    })

    create_table :fooltip_associations do |t|
      t.string     :owner_type
      t.integer    :owner_id
      t.references :container
      t.timestamps
    end

    create_table :fooltip_popups do |t|
      t.string :identifier
      t.integer :min_height
      t.integer :min_width
      t.integer :max_height
      t.integer :max_width
      t.timestamps
    end
    Fooltip::Popup.create_translation_table!({
      title: :string,
      content: :text
    })

    create_table :fooltip_links do |t|
      t.references :container
      t.references :popup
      t.integer :placement
      t.integer :trigger
      t.integer :x
      t.integer :y
      t.timestamps
    end
    add_index :fooltip_links, :container_id
    add_index :fooltip_links, :popup_id

  end

  def down
    drop_table :fooltip_links
    Fooltip::Popup.drop_translation_table!
    drop_table :fooltip_popups
    drop_table :fooltip_associations
    Fooltip::Container.drop_translation_table!
    drop_table :fooltip_containers
  end

end
