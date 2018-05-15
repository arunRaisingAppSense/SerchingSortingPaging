class Project < ApplicationRecord
	has_many :p_comments
	def self.search(search)
		where("name LIKE ? OR id LIKE ? OR duration LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" ) 
	end

end

