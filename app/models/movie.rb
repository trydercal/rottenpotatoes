class Movie < ActiveRecord::Base
  @@possible_ratings = ['G','PG','PG-13','R']
  def self.with_ratings(ratings_list)
    if ratings_list.empty?
      return Movie.all
    end
    return Movie.where(rating: ratings_list)
  end
  def self.all_ratings
    return @@possible_ratings
  end
end
