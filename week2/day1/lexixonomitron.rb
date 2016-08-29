
class Lexiconomitron
	def delete  to_sustitute
		string.gsub(/[tT]/, '') 

	end
	def shazan to_reverse
		
	string_reverse = string.reverse
	string_reverse.scan(/\w+/).values_at(-1, 0)

	end

	def oompa words_array
		palabras_cortas = []
		words_array.each do |elemet|
			if elemet.length <= 3
				palabras_cortas.push(elemet)
			end
		end

		palabras_cortas.map do |word|
			delete(word)
		end

	end
end



RSpec.describe "play with words and array" do
# let(:acortado) {Lexiconomitron.new}
before :each do
	@acortado = Lexiconomitron.new
end
	it "eliminate T"  do
		expect(@acortado.delete("tomates remolacha verduras y patatas")).to eq ("omaes remolacha verduras y paaas")
	end

	it "reverse and get first and second words" do
		expect(@acortado.shazan("omaes remolacha verduras y paaas")).to eq (["seamo", "saaap"])

	end

	it "shorts words" do
		expect(@acortado.oompa(["omaes", "remolacha", "verduras", "y", "paaas"])).to eq (["y"])

	end
end



	