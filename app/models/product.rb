class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review (user, rating, comment)
        Product.create(user: user, rating: rating, comment: comment)

    end

    def print_all_reviews
        reviews.map do |review|
            puts "Review for #{product.name} by #{user.name}: #{self.rating}. #{self.comment}"
        end
    end

    def average_rating
        reviews.map do |review|
                review.average (:rating).to_f
        end
    end

end