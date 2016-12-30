class AddTestToTab < ActiveRecord::Migration[5.0]
  def change
    add_column :tabs, :test_id, :integer
  end
end
