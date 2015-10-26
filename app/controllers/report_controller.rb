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
  	@connection = ActiveRecord::Base.connection
  	@result = @connection.exec_query('select * from students join attendances on attendances.sid = students.sid where students.sid = sid')
  	@student = Student.find(sid)
  end
end
