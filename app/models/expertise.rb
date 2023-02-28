class Expertise < ApplicationRecord

 # has_many :mentors
 # has_many :seniorities
 validates :field, presence: true
 validates :field, uniqueness: true

end
