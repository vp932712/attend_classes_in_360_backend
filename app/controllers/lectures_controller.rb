class LecturesController < ApplicationController

  def index
    @lectures = Lecture.all
    render json: @lectures
  end

  
end
