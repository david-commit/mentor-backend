class Expertise < ApplicationRecord

 # had=s_many :mentors
 validates :field, presence: true
 validates :field, uniqueness: true

end
