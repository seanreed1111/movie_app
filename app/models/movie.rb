class Movie < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :studio
  belongs_to :director
  has_many :positions, inverse_of: :movie, dependent: :destroy

  has_many :cast, through: :positions,
  source: :cast_and_crew, source_type: "Actor"

  has_many :crew, through: :positions,
  source: :cast_and_crew, source_type: "OtherCrew"

  has_many :writers, through: :positions,
  source: :cast_and_crew, source_type: "Writer"

end
