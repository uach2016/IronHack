class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain word
		@dictionary.each do |word|.include?(word)
			puts word
			end	       
    end
end



array_palabras = ["cat", "cot", "cog", "dog" ]
my_chain = WordChain.new(array_palabras)
my_chain.find_chain("cat", "dog")

