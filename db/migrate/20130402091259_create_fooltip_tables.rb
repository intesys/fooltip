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
  end

  def down
    drop_table :fooltip_associations
    Fooltip::Container.drop_translation_table!
    drop_table :fooltip_containers
  end

end
