class Movie < ActiveRecord::Base
  belongs_to :studio
  belongs_to :director
  validates :name, presence: true, uniqueness: true
 
  has_many :positions, inverse_of: :movie, dependent: :destroy

  has_many :cast, through: :positions,
  source: :cast_and_crew, source_type: "Actor"

  has_many :crew, through: :positions,
  source: :cast_and_crew, source_type: "Crew"

  has_many :writers, through: :positions,
  source: :cast_and_crew, source_type: "Writer"

end
