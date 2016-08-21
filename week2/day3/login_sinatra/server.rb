require "sinatra"
require "sinatra/reloader"
require 'pry'
require_relative "./lib/password.rb"
require_relative "./spec/password_spec"

enable(:sessions)

get "/loging" do
  erb(:loging)
end

get "/loging_succesfull" do
  erb(:loging_succesfull)
end

get "/loging_invalid" do
  erb(:loging_invalid)
end


post "/password_check" do
  email = params[:email]
  password = params[:password]
  operation = PasswordChecker.new(email, password)
  if (operation.check_letter == true) && (operation.check_numbers == true) && (operation.check_symbols == true) && (operation.check_length == true) && (operation.check_password == true)
    erb(:loging_succesfull)
  else
    erb(:loging_invalid)
end

end