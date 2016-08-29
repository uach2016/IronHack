class PasswordChecker
	def initialize email, password
		@email = email
		@password = password
	end

	def check_letter
		password_letter = false
		@password.each_char do |letter|
			if (letter.ord > 96) && (letter.ord < 123)
				password_letter = true
			else 
			 	 (letter.ord > 64) && (letter.ord < 91)
				password_letter = true
			end
		
		end
		password_letter
	end
	
	def check_numbers
		password_numbers = false
		@password.each_char do |number| 
			 if (number.ord > 47) && (number.ord < 58)
				password_numbers = true
			end
		end
		password_numbers
	end

	def check_symbols
		password_symbol = false
		@password.each_char do |symbol|
			if (symbol.ord > 32) && (symbol.ord < 48)
				password_symbol = true
			end
		end
		password_symbol
	end



	def check_length
		@password.length > 7
	end

	

	def check_password
		name_dominioncom = @email.split("@")
		final_name = name_dominioncom[0]
		final_dominion = name_dominioncom[1].split(".")[0]
		if @password.include?(final_name) || @password.include?(final_dominion)
			false
		else
			true
		end
	end
end





