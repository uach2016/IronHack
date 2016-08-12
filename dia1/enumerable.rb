class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]
  array_printer(array_of_languages)

aged_languages = array_of_languages.map do |language| 
	language.age +=1 
	language
end

puts "The programming languages aged one year are: "
array_printer(aged_languages)

aged_sort = aged_languages.sort do |x, y|
	y.age <=> x.age
end



puts "The programming languages sorted by age are:"
array_printer(aged_sort)
puts "-----------------------------"

aged_sort.delete_at(0)
array_printer(aged_sort)
puts "-------------------------------"

array_shuffle = aged_sort.shuffle
array_printer(array_shuffle)
puts "________________________________"

array_of_languages.each do |language| 
	if language.name.include?("u") 
	puts "yes"
	end
end
puts "__________________________________"

array_of_languages.each do |language|
	puts language.name.index("Ruby")
end

puts "_____________________________________"

array_of_languages.each do |language|
 if language.type.start_with?("Dy")
 	puts "yes"
 end
end

array_printer(array_of_languages)
