class Memory
	def add_memory file_name, result_calculator
		IO.write("./public/#{file_name}", result_calculator)
	end

	def get_memory
		IO.read("./public/last_result")
	end

end

