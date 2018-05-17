class Project < ApplicationRecord
	has_many :p_comments
	def self.ajax_search(search)
		if search.present?
			where("name LIKE ? OR id LIKE ? OR duration LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" ) 
		end
	end
	def self.search(search)
		if search
			where("name LIKE ? OR id LIKE ? OR duration LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" ) 
		end
	end
end

