class ApplicationController < ActionController::API

  private
  
  def issue_token(payload)
    JWT.encode(payload, "Steven", "HS256")
  end

  def authorize_student!
    if !current_student.present?
      render json: {error: 'none found'}
    end
  end

  def current_student
    @current_student ||= Student.find_by(id: token_student_id)
  end

  def logged_in?
    !!current_student
  end

  def token_student_id
    decoded_token.first['student_id']
  end

  def decoded_token
    if token
      begin
        JWT.decode(token, "Steven", true, {algorithm: "HS256"})
      rescue JWT::DecodeError
        return [{}]
      end
    else
      [{}]
    end
  end

  def token
    request.headers['Authorization']
  end


end
