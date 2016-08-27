class Studio < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :movies, dependent: :nullify
end
