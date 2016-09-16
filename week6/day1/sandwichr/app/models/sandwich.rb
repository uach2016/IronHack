class Sandwich < ActiveRecord::Base
	has_many :sandwich_ingredients
	has_many :ingredients, through: :sandwich_ingredients

	def as_json(options={})
 		super(only: [:name,:bread_type],
 		include: [ingredients: { only: [:name, :calories] }])
	end
end	