ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define do

  create_table :test_models, force: true do |t|
    t.string :a
    t.timestamps
  end

end
