class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @ducks = @student.ducks
  end

  def new
    @student = Student.new()
  end

  def create
    student = Student.create(student_params)
    redirect_to student
  end

  def edit
    @student = Student.find(params[:id])
    # student.update(student_params)
    # redirect_to @student
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.valid?
      redirect_to @student
    else
    flash[:errors] = @student.errors.full_messages
      redirect_to edit_student_path(@student)
    end
  end

private
def student_params
  params.require(:student).permit(:name, :mod)
end

# def find_student
#   @student = Student.find(params[:id])
# end
end
