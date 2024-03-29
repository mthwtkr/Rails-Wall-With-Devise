class Message < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	
	validates :content, 
		presence: true,
		length: {minimum: 4}
end
