class CreateTeacherClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_classes do |t|
      t.string :title
      t.text :description
      t.integer :min_students
      t.integer :max_students
      t.float :price
      t.references :category, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
