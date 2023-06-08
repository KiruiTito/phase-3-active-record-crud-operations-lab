class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
      Movie.where(release_date: year)
    end
  
    def self.first_movie
      Movie.first
    end
  
    def self.last_movie
      Movie.last
    end
  
    def self.count_movies
      Movie.count
    end
  
    def self.find_movie_by_id(id)
      Movie.find(id)
    end
  
    def self.find_movie_by_attributes(attributes)
      Movie.find_by(attributes)
    end
  
    def self.movies_after(year)
      Movie.where("release_date > ?", year)
    end
  
    def update_title(new_title)
      self.update(title: new_title)
    end
  
    def self.update_all_titles(new_title)
      Movie.update_all(title: new_title)
    end
  
    def delete_movie
      self.destroy
    end
  
    def self.delete_all_movies
      Movie.destroy_all
    end
  end
  