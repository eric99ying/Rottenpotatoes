class Movie < ActiveRecord::Base
  
  def self.all_ratings
    return Movie.distinct.pluck(:rating)
  end
  
  def self.with_ratings(ratings)
    return Movie.where(rating:ratings)
  end
  
  def self.sort_col(movies, sort_on)
    if sort_on == "title"
      return movies.order(:title)
    else
      return movies.order(:release_date)
    end
  end
end
