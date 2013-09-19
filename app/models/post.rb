class Post < ActiveRecord::Base
   belongs_to :user
   has_many :comments
   has_many :post_categories
   has_many :categories, through: :post_categories

   validates :title, presence: true
end

#has_and_belongs_to_many :categories
#INTERVIEW QUESTION - why habtm isn't really used
#Assumptions with habtm:
#need a join table called categories_posts - two tables 
#join table will only have two foreign key columns
# pros only one line, no need for join model (still need join table)
#cons: cant add additional meta-data to association (bigger deal in advanced programming)