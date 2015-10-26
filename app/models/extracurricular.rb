class Extracurricular < ActiveRecord::Base
	belongs_to :student, inverse_of: :extracurriculars
end
