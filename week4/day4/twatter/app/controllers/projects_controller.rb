class ProjectsController < ApplicationController
	def index
	end

	def new
		@twat = Twat.new

	end

	def create
		@twat = Twat.new(params[:twat].permit(:body))
		if @twat.save
			flash[:notice] = "Bien has twateado"
			redirect_to projects_index_path
		else

			render :new
		end

	end

end