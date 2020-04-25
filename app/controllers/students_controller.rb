class StudentsController < ApplicationController
  
  def index
    @students = Student.all
    # render :index
  end

  def show
    @student = Student.find(params[:id])
    # render :show
  end

  def new
    @student = Student.new
  end

  def create
    session[:form_params] = params.inspect
    # byebug
    redirect_to new_student_path
    # redirect_to "#{new_student_path}?first_name=#{params[:student][:first_name]}"
  end

  # def create
  #   # Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
  #   params[:student] = params[:student]
  #   redirect_to new_student_path
  # end



end
