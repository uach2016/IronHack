class StringCalculator
	def add(input)
		
		input.split(" ").reduce(0) do |a,b|
				 a += b.to_i 
		end
		
	end
end

RSpec.describe "String Calculator test" do
	it "zero digits" do
		number = ""
		expect(StringCalculator.new.add(number)).to eq(0)
	end

	it "strings numbers separated by spaces" do
		expect(StringCalculator.new.add("1 2 3")).to eq (6)
	end
end

class Change_number
	def self.change number
				

			 if number % 3 == 0
			      "Fizz"
			 elsif  number % 5 == 0
			       "Buzz"
			 elsif string_number = number.to_s 
	  				string_number[0] == "1"
	    			"Bang"
	    	else
	    			"nada"
	  		end
			       	
	end
end

RSpec.describe "Change_number test" do
	it "must return Fizz with multiple of 3"  do
		expect(Change_number.change(3)).to eq ("Fizz")
	end

	it "must return Buzz with multiple of 5" do
	
		expect(Change_number.change(5)).to eq ("Buzz")
	end
	it "must return Bang if start with 1" do
	
		expect(Change_number.change(1)).to eq ("Bang")
	end
end