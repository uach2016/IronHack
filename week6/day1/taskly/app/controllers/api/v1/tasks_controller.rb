class Api::V1::TasksController < ApplicationController
	def index
		user = User.find_by(id: params[:user_id])
		unless user
			render json:{error: "user not found"},
			status: 404
			return	
		end
		tasks = user.tasks
		render json: tasks
	end

	def create
		user = User.find_by(id: params[:user_id])
		unless user
			render json:{error: "user not found"},
			status: 404
			return	
		end
		task = user.tasks.create(task_params)
		render json: tasks
	end

	def show
		user = User.find_by(id: params[:user_id])
		unless user
			render json:{error: "user not found"},
			status: 404
			return	
		end
		task = user.tasks.find(params[:id])
		unless task
			render json:{error: "task not found"},
			status: 404
			return	
		end
		render json: task
	end

	def destroy
		user = User.find_by(id: params[:user_id])
		unless user
			render json:{error: "user not found"},
			status: 404
			return	
		end
		task = user.tasks.find(params[:id])
		unless task
			render json:{error: "task not found"},
			status: 404
			return	
		end
		task.destroy
		render json: task
	end

	def complete
		user = User.find_by(id: params[:user_id])
		unless user
			render json:{error: "user not found"},
			status: 404
			return	
		end
		task = user.tasks.find(params[:id])
		unless task
			render json:{error: "task not found"},
			status: 404
			return	
		end
		task.complete!
		render json: task
	end


	private

	def task_params
		params.require(:task).permit(:name, :due_time)
	end
end