class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.valid?
      @note.save
      render json: @note
    end
  end


  private

  def note_params
    params.permit(:text_field, :student_id, :lecture_id)
  end

end
