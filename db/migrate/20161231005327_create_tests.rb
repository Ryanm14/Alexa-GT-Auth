class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :teacher_first_name
      t.string :teacher_last_name
      t.string :student_first_name
      t.string :student_last_name
      t.string :severity
      t.decimal :test_duration
      t.timestamps
    end
  end
end
