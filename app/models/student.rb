class Student < ActiveRecord::Base
	has_many :extracurriculars, inverse_of: :student
	has_many :marks, inverse_of: :student
	
	belongs_to :cl, inverse_of: :students
end
