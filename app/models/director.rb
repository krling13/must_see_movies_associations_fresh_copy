class Director < ActiveRecord::Base
  validates :name, uniqueness: { scope: :dob,
    message: "Director exists already in database" }
    has_many :movies
end
