class AddTabOutsToTests < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :tab_out_id, :integer
  end
end
