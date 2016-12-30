class CreateTab < ActiveRecord::Migration[5.0]
  def change
    create_table :tabs do |t|
       t.decimal :length
    end
  end
end
