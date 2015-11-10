class Movie < ActiveRecord::Base
  validates :director_id,:title, :presence=> true
  validates :title, uniqueness: { scope: :year,
    message: "Movie from that year exists already in database" }
    validates :year,numericality: {greater_than: 1870, less_than: 2050, only_integer: true}, :allow_blank => true
    validates :duration,numericality: {greater_than: 0, less_than: 2764800, only_integer: true}, :allow_blank => true
end

# - director_id: must be present
# - title: must be present; must be unique in combination with year
# - year: must be integer between 1870 and 2050
# - duration: must be integer between 0 and 2764800
# - description: no rules
# - image_url: no rules
