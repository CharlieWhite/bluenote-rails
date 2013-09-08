class NoteSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :from_user_id

  has_one :sent_user
end
