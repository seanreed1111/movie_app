class Crew < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :positions, as: :cast_and_crew, dependent: :destroy #polymophic
end

#table is called crews! Yuck