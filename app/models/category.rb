class Category < ApplicationRecord

		has_many_attached :images
		validates :name, presence: true





end
