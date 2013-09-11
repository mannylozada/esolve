class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :student_number
      t.integer :language_id
      t.integer :grade
      t.date :entry_date
      t.string :ese_code
      t.integer :fcat_reading
      t.integer :fcat_math
      t.integer :cella_listening_speaking
      t.integer :cella_reading
      t.integer :cella_writing
      t.boolean :student_with_dissability
      t.boolean :economically_disadvantaged
      t.boolean :white
      t.boolean :hispanic
      t.boolean :black
      t.boolean :asian
      t.boolean :multiracial

      t.timestamps
    end
  end
end
