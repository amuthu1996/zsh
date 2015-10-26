class Mark < ActiveRecord::Base
	belongs_to :student, inverse_of: :marks
	belongs_to :subject, inverse_of: :mark
end
