class Actor < ApplicationRecord
  has_many :movies, :through => :actor_movie
end
