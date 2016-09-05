class User < ApplicationRecord
	validates :name, presence: true
	validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ ,  message: "cannot contain white spaces"}
	
 end
