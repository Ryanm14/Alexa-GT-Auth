class AddTabToTest < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :tab_id, :integer
  end
end
