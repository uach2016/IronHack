class Api::V1::SandwichesController < ApplicationController
	def index
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		unless ingredient
			render json:{error: "ingredient not found"},
			status: 404
			return	
		end
		sandwiches = ingredient.sandwiches
		render json: sandwiches
	end

	def create
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		unless ingredient
			render json:{error: "ingredient not found"},
			status: 404
			return	
		end
		sandwich = ingredient.sandwiches.create(sandwich_params)
		render json: sandwich
	end

	def show
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		unless ingredient
			render json:{error: "ingredient not found"},
			status: 404
			return	
		end
		ingredient = ingredient.sandwiches.find(params[:id])
		unless ingredient
			render json:{error: "ingredient not found"},
			status: 404
			return	
		end
		render json: sandwich
	end

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:sandwich_id])
		ingredient = Ingredient.find_by(id: params[:id])
		unless ingredient
			render json:{error: "ingredient not found"},
			status: 404
			return	
		end
			sandwich.ingredients.push(ingredient)
			render json: sandwich		
	end

	# def destroy
	# 	user = User.find_by(id: params[:user_id])
	# 	unless user
	# 		render json:{error: "user not found"},
	# 		status: 404
	# 		return	
	# 	end
	# 	task = user.tasks.find(params[:id])
	# 	unless task
	# 		render json:{error: "task not found"},
	# 		status: 404
	# 		return	
	# 	end
	# 	task.destroy
	# 	render json: task
	# end

	# def complete
	# 	user = User.find_by(id: params[:user_id])
	# 	unless user
	# 		render json:{error: "user not found"},
	# 		status: 404
	# 		return	
	# 	end
	# 	task = user.tasks.find(params[:id])
	# 	unless task
	# 		render json:{error: "task not found"},
	# 		status: 404
	# 		return	
	# 	end
	# 	task.complete!
	# 	render json: task
	# end


	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end
end