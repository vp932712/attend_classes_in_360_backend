class NoteMailer < ApplicationMailer

  def send_notes(notes, email)
    @email = email
    @notes = notes
    mail(to: @email, subject: "Your notes from #{@notes.created_at}")
  end
end
