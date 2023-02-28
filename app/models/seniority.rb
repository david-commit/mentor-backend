class Seniority < ApplicationRecord

 # belongs_to :expertise
 validates :level, presence: true
 validates :level, uniqueness: true

end
