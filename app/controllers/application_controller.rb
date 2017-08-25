class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @teachers = Teacher.all

    render json: @teachers.to_json(:include => :courses )
  end
  def show
     @student = Student.find(params[:id])

     render json: @student.to_json(:include => {:courses => {:include => :teacher }})
  end
end
