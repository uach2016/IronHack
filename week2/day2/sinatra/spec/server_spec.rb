require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe "Server Test" do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "it should load Hi." do 
		get "/hi"
		expect(last_response).to be_ok
	
		expect(last_response.body).to eq ('From Sinatra')
	end

	it "should redirect the pg" do 
		get "/hola"
		expect(last_response.redirect?).to be (true)
	end

	# it "should load the home page" do 
	# 	get "/repos/:repo"
	# 	expext().to be ok
	# end

	# it "/testing" do 
	# 	get "/testing"
	# 	expext().to be ok
	# end

	# it "should load the home page" do 
	# 	get "/hola"
	# 	expext().to be ok
	# end
end