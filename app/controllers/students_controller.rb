class StudentsController < ApplicationController
   def index
     @teachers = Teacher.all

     render json: @teachers.to_json(:include => :courses )
   end
end
