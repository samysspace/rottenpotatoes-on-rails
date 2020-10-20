class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
    Movie.where(:rating => ratings_list)
  end
  
  def self.all_ratings
    Movie.pluck(:rating).uniq.sort
  end
end
