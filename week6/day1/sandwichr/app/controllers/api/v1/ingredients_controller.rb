class Api::V1::IngredientsController < ApplicationController
	def index
		sandwich = Sandwich.find_by(id: params[:sandwich_id])
		unless sandwich
			render json:{error: "sandwich not found"},
			status: 404
			return	
		end
		ingredients = sandwich.ingredients
		render json: ingredients
	end

	def create
		sandwich = Sandwich.find_by(id: params[:sandwich_id])
		unless sandwich
			render json:{error: "sandwich not found"},
			status: 404
			return	
		end
		ingredient = sandwich.ingredients.create(ingredient_params)
		render json: ingredient
	end

	def show
		sandwich = Sandwich.find_by(id: params[:sandwich_id])
		unless sandwich
			render json:{error: "sandwich not found"},
			status: 404
			return	
		end
		sandwich = sandwich.ingredients.find(params[:id])
		unless sandwich
			render json:{error: "sandwich not found"},
			status: 404
			return	
		end
		render json: ingredient
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

	def ingredient_params
		params.require(:ingredient).permit(:name, :calories)
	end
end