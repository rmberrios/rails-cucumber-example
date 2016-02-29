class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "El estudiante ha sido creado"
      redirect_to students_path
    else
      flash.now[:danger] = "El estudiante no pudo ser creado"
      render :new
    end
  end

private
  def student_params
    # White list the params   
    params.require(:student).permit(:name, :lastname, :telephone, :scholarship)    
  end
end