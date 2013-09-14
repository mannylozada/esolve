class Grade < ActiveRecord::Base
  attr_accessible :grade_name

  has_many :students
end
