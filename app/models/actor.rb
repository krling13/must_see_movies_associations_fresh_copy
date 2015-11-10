class Actor < ActiveRecord::Base
  validates :name, uniqueness: { scope: :dob,
    message: "Actor exists already in database" }
end
