class StudentsController < ApplicationController

  def index
    #byebug
    if (params.has_key?(:name)) then
      n = params[:name].downcase
      #students = Student.find_by("LOWER(first_name)= ? OR LOWER(last_name)= ?", n, n)
      #students = Student.find("LOWER(first_name)= ? OR LOWER(last_name)= ?", n, n)
      students = Student.where("LOWER(first_name)= ? OR LOWER(last_name)= ?", n, n)
      render json: students
    else
      students = Student.all
      render json: students
    end
  end

  def show
    #byebug
    student = Student.find(params[:id])
    render json: student
  end

end
