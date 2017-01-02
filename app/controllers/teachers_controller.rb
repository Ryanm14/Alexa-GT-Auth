class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:success] = "Signed Up"
      redirect_to root_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_teacher_path
    end
  end
  
  def index
  @teachers = Teacher.all
  render json: @teachers
  end
    
  private
   def teacher_params
    params.require(:teacher).permit(:first_name, :last_name)
   end
end