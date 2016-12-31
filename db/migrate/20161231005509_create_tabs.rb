class CreateTabs < ActiveRecord::Migration[5.0]
  def change
    create_table :tabs do |t|
      t.decimal :length
      t.integer :test_id
      t.timestamps
    end
  end
end
