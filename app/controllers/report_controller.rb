class ReportController < ApplicationController
  def index
  	@students = Student.all
  	@std_attd = Student.joins('join attendances ON students.sid = attendances.sid')
  	
  end

  def student
  end

  def management
  end
end
