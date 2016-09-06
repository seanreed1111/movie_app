class Position < ActiveRecord::Base
  belongs_to :movie, inverse_of: :positions
  belongs_to :cast_and_crew, polymorphic: true

  validates :cast_and_crew_id, :cast_and_crew_type, presence: true

  validates :movie_id, uniqueness: {
    scope: [:cast_and_crew_id, :cast_and_crew_type],
    message: 'can only add each cast and crew member once to each movie'
  }
end