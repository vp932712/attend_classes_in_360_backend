class AuthController < ApplicationController

  def login
    student = Student.find_by(username: params[:username])
    if student && student.authenticate(params[:password])
      token = issue_token({ 'student_id': student.id })
      render json: {'token': token }
    else
      render json: {'error': 'Wrong email or password'}, status: 401
    end
  end


end
