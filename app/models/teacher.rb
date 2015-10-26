class Teacher < ActiveRecord::Base
	has_one :cl, inverse_of: :teacher
	has_many :subjects, inverse_of: :teacher
end
