class Movie < ApplicationRecord

has_many :reviews
before_create :slugify 

    def slugify
        self.slug=name.parameterize
    end

    def average_score
       reviews.average(:score).round(2).to_f
    #  Movie.first.average_score To check the average score.
    end

end

