class Article < ApplicationRecord 
	validates :title, presence: true 
	validates :body, presence: true 
	
	scope :by_status, -> status { where(status_article: true) } 
	
	def self.search(search) 
	  where("title LIKE ?", "%#{search}%") 
	end 
	 
end 