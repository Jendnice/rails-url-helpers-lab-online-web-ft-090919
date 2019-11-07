class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
  def activate
    @student = Student.find(params[:id])
    activate_student_path(@student)
    redirect to show 
  end 
  
  def activate_student_path(student)
    if student.active == false 
      student.active = true 
    elsif student.active == true 
      student.active = false 
    end 
    student.save 
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end