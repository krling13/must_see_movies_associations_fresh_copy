class Casting < ActiveRecord::Base
  validates :movie_id,:actor_id, :presence=> true
end
