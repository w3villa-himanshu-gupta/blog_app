class Articlee < ApplicationRecord
    validates :title, presence: true , length: {minimum: 6 , maximum: 100}
    validates :description, presence: true , length: {minimum: 10 , maximum: 100}  
    has_many :posts
    belongs_to :user
    
end
# Articlee.first ,Articlee.last,Articlee.find(id)
