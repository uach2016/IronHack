class MatchesController < ApplicationController
	def index
		matches = Macth.find_by(id: 1).players
		render json: matches

	end
end
