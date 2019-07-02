class StudentsController < ApplicationController
  
  def index
    @students = all_students_array
  end

  def show
    @student = find_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(allowed_params)
    # byebug
    redirect_to student_path(@student)
  end

  private

  def allowed_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def find_student
    Student.find(params[:id])
  end

  def all_students_array
    Student.all
  end
end
