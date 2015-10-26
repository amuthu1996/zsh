class Subject < ActiveRecord::Base
	belongs_to :teacher, inverse_of: :subjects
	belongs_to :cl, inverse_of: :subjects
	has_one :mark, inverse_of: :subject
end
