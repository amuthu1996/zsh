class ReportController < ApplicationController
  def index
  	@students = Student.all
  	@std_attd = Student.joins('join attendances ON students.sid = attendances.sid')
  	
  end

  def student
  	@students = Student.all
  end

  def management
  end

  def getStudent
  	sid = params[:sid]
  	print sid
  	
  	@student = Student.find(sid)
    @std = Student.joins(:marks)
  end
end
