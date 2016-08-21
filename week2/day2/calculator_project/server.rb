require "sinatra"
require "sinatra/reloader"
require_relative "./lib/classCalculator"
require_relative "./lib/memory"

get "/add" do
  erb(:add)
end

get "/calculator" do
  erb(:calculator)
end


post "/calculator" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = Calculator.new(first, second)
 
  if params[:operation] == "add"
  		@result=operation.add

  elsif params[:operation] == "substrantion"
  		@result=operation.substrantion

  elsif params[:operation] == "multiplication"
  		@result=operation.multiplication

  else params[:operation] == "division"

  		@result=operation.division
	end
  
	erb(:calculator)
end

post "/memory" do
	memoria = Memory.new
	memoria.add_memory "last_result", params[:operation_finish]
	memoria.get_memory
end
