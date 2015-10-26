class Cl < ActiveRecord::Base
	belongs_to :teacher, inverse_of: :cl
	has_many :subjects, inverse_of: :cl
	has_many :students, inverse_of: :cl
end
