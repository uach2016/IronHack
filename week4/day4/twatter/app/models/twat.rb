class Twat < ApplicationRecord
	validates :body, presence: true 
	validates :body, format: { with: /\A[a-zA-Z0-9]+\Z/, message: "cannot contain white spaces"}
end

