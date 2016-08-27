class Writer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: :true
  has_many :positions, as: :cast_and_crew, dependent: :nullify #polymophic
end
