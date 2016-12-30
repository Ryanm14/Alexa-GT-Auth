class CreateTabOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :tab_outs do |t|
      t.decimal :length
      t.timestamps
    end
  end
end
