class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :subject
      t.string :url
      t.integer :institution_id

      t.timestamps
    end
  end
end
