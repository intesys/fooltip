ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define do

  create_table :test_fooltips, force: true do |t|
    t.string :name
    t.timestamps
  end

end
