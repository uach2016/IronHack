class TextInspectionsController < ApplicationController
	def new
		render "new" 
	end

	def most_common(string)
	  words = string.downcase.tr(",.?!",'').split(' ')
	  counts = words.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
	  max_quantity = counts.values.max
	  counts.select { |k, v| v == max_quantity }.keys
  

	end

	 def create
    	@text = params[:text_inspection][:user_text]
    	@most_common_word = most_common(@text).join
    	
       @word_count = @text.split(" ").length
       @estimate_time_reading = @word_count / 275 / 60

  	  render "results"
  	end

	 def delete_most_common_word(words)
		array_not_common_word = words.delete_if {|word| word == @most_common_word }
		@second_common_word = most_common_word(array_not_common_word) 
		
	end
end


  	