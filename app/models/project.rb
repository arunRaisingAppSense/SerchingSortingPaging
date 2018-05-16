class Project < ApplicationRecord
	has_many :p_comments
	def self.search(search)
		if search
			where("name LIKE ? OR id LIKE ? OR duration LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" ) 
		else
			Project.all
		end
	end

end

