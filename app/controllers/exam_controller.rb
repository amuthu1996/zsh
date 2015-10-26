class ExamController < ApplicationController
  def index
    	@cls_teacher = Teacher.joins(:cl)
  end

  def seating
  end

  def eligibility
  end
end
