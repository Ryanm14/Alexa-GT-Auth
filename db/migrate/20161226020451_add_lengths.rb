class AddLengths < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :length, :integer
  end
end
