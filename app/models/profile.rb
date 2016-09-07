class Profile < ApplicationRecord
	belongs_to :user
	validates_presence_of: :first_name, :last_name, :gender

	def self.search_hobbies(search)
		self.where("hobbies LIKE ?", search)
	end
end
