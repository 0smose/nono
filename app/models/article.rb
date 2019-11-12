class Article < ApplicationRecord
 
  validates :title, presence: true, 
  					length: {minimum: 1}
  validates :body, presence: true,
  					length: {minimum: 5}
  validates :category, presence: true, 
  					length: {minimum: 2}
  belongs_to :user

end
