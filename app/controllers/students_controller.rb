class StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @students
  end

  def create
    @student = Student.new(name: params[:name], email: params[:email], password: params[:password])
    if @student.valid?
      @student.save
      token = issue_token({ 'student_id': @student.id })
      render json: {'token': token, 'student_id': @student.id }
    else
      render json: {error: 'That e-mail exists in our database'}
    end
  end

  private

    # def student_params
    #   params.require(:)
    # end
    #  not sure if i will need params come back to this later



end
