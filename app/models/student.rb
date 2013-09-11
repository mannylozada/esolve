class Student < ActiveRecord::Base
  attr_accessible :asian, :black, :cella_listening_speaking, :cella_reading, :cella_writing, :economically_disadvantaged, :entry_date, :ese_code, :fcat_math, :fcat_reading, :firstname, :grade, :hispanic, :lastname, :multiracial, :student_number, :student_with_dissability, :white, :language_id

  belongs_to :language
end
