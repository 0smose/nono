class Category < ApplicationRecord

	has_many_attached :images
	# validates :name, presence: true

	# def thumbnail input
	# 	return self.images[input].variant(resize: "300x300!").processed
	#  end

end
