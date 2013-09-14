class EsolGroup < ActiveRecord::Base
  attr_accessible :group_name

  has_many :students
end
