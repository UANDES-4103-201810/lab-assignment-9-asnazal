class Movie < ApplicationRecord
  belongs_to :director
  has_many :actors, :through => :actor_movie
  has_many :categories
  has_one :address
end
