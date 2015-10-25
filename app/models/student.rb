class Student < ActiveRecord::Base
	belongs_to :cl, inverse_of: :students
	has_one :attendance, inverse_of: :student
end
