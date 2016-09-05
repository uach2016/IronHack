class AsciisController < ApplicationController
	def new
		render "new" 
	end
	def create
		@ascii = Artii::Base.new(:font=>"doh").asciify params[:asciis]

		render 'results'
	end
end
