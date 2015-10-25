class Cl < ActiveRecord::Base
	has_many :students, inverse_of: :cl
end
