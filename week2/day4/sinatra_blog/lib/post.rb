class Post
	attr_reader :title, :date, :text, :id, :category, :author
	 @@current_id = 1
	def initialize title, text, category, author
		@title = title
		@id = @@current_id
		@@current_id += 1
		@date = Time.now
		@text = text
		@category = category
		@author = author

	end
end