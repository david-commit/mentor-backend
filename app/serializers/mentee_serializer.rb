class MenteeSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :dob, :email, :phone, :bio, :title, :organization, :country, :language, :expertise, :gender, :top_goal
end
