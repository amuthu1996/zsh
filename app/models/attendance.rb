class Attendance < ActiveRecord::Base
	belongs_to :student, inverse_of: :attendance
end
