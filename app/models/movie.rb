class Movie < ActiveRecord::Base

#instantiates a movie with a given title, and saves it to the database
    def self.create_with_title(title)
       Movie.create(title: title)   #.create method - create a new record and save it to the db
    end
#returns the first item in the table
    def self.first_movie
       Movie.first
    end
    def self.last_movie
        Movie.last
     end
     def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes(att)
        Movie.find_by(att)
    end
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end
    def update_with_attributes(att)
        self.update(att)
    end
    def self.update_all_titles(new_t)
        Movie.update_all(title: new_t)
    end
    def self.delete_by_id(id)
        Movie.destroy_by(id: id)
    end
    def self.delete_all_movies
        Movie.destroy_all
    end
end