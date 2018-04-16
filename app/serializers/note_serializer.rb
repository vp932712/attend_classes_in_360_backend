class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text_field, :student_id, :lecture_id, :created_at
end
