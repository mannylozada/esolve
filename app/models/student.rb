class Student < ActiveRecord::Base
  attr_accessible :asian, :black, :cella_listening_speaking, :cella_reading, :cella_writing, :economically_disadvantaged, :entry_date, :ese_code, :fcat_math, :fcat_reading, :firstname, :grade_id, :hispanic, :lastname, :multiracial, :student_number, :student_with_dissability, :white, :language_id, :esol_group_id

  validates :firstname, :lastname, :student_number, :grade_id, :esol_group_id, :presence => true
  validates_uniqueness_of :student_number

  belongs_to :grade
  belongs_to :language
  belongs_to :esol_group

  def self.search(search)
    if search
      where('lastname LIKE ? OR firstname LIKE ?', "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end
end
