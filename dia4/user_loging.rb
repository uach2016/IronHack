class Text	
	def log_in
	unai = User.new 
		if unai.check_user_password
			puts "OK"
			your_text
			
		else puts "wrong details"
		end
	end
	
	def your_text

		puts "write your text"
		@text = gets.chomp
		election
	end
	
	def election
		puts "what do you want to do (count letters, turn into upcase or downcase"
		answer = gets.chomp
		case answer
		
		when "count letter"
			@text.length
		when "turn into upcase"
  			@text.upcase
		when "downcase"
  			@text.downcase
		else
  			puts "wrong answer choose again"
		end
	end
	
end

class User
	def initialize
		@name = "unai"
		@password = "0000"
	end

	def check_user_password 
		puts "write your username"
		username = gets.chomp
			
		puts "password please"
		password = gets.chomp
		
		if password == @password && username == @name
			true
	
	   	else
	   		false
		end
	end
end

text = Text.new
text.log_in