class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review (user, rating, comment)
        Product.create(user: user, rating: rating, comment: comment)

    end

    def print_all_reviews
        reviews.map do |review|
            puts "Review for #{name} by #{review.user.name}: #{review.rating}. #{review.comment}"
        end
    end

    def average_rating
        sum = 0.0
        count = 0
        reviews.each do |review|
           sum += review.rating
           count += 1
         end
        (sum / count).to_f
        
    end

end