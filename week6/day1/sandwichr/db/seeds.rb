# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	bacon = Ingredient.create(name: "Bacon", calories: 120)
	cheese = Ingredient.create(name: "cheese", calories: 150)
	sandwich1 = Sandwich.create(name: "Bacon", bread_type: "brown3")

	sandwich1.ingredients.push(bacon)
	sandwich1.ingredients.push(cheese)