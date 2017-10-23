class Book < ApplicationRecord
	validates :name, presence: true
	validates :category, presence: true
	validates :price, presence: true
	validates :isbn, presence: true
	def self.search(search)
		if search
			where(['name LIKE ?', "%#{search}%"])
		else
			all
		end
	end
end
