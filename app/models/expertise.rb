class Expertise < ApplicationRecord

 # has_many :mentors
 has_one :seniority
 validates :field, presence: true
 validates :field, uniqueness: true

end
