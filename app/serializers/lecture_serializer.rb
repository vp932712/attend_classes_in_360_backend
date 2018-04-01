class LectureSerializer < ActiveModel::Serializer
  attributes :id, :subject, :url, :institution_id
end
