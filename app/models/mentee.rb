class Mentee < ApplicationRecord
 has_secure_password
 validates :full_name, presence: true
 validates :dob, presence: true
 validates :email, presence: true, uniqueness: true
 validates :phone, presence: true
 validates :bio, presence: true, length: { minimum: 20 }
 validates :title, presence: true
 validates :gender, presence: true, inclusion: { in: ["Male", "Female", "Prefer not to say"] }
 validates :country, presence: true
 validates :language, presence: true
 validates :expertise, presence: true
 validates :top_goal, presence: true
end
