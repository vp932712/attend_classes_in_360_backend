class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :text_field
      t.integer :student_id
      t.integer :lecture_id

      t.timestamps
    end
  end
end
