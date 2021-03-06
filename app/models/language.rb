# == Schema Information
#
# Table name: languages
#
#  id            :integer          not null, primary key
#  language_name :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Language < ActiveRecord::Base
  attr_accessible :language_name

  default_scope order('language_name ASC')

  has_many :students
end