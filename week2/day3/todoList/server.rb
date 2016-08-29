require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

todolist = TodoList.new

get "/task" do

if params[:action] == "complete"
  		todolist.complete_task	
end

@show_tasks = todolist.tasks
	
  
erb(:task)
end


post "/result" do
task = params[:content_task]
tasks = Task.new(task)

if params[:action] == "add"
  		todolist.add_task tasks


else params[:action] == "delete"
   		todolist.find_task_by_id task

end

@show_tasks = todolist.tasks

erb(:result)
end


