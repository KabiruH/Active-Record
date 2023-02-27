class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

def favorite_product
    reviews.map do |review|
        review.maximum(:rating)
    
    end
end

def remove_reviews (product)
    products.map do |product|
        product.review.where(user: user_id).delete.all
    end
end


end
