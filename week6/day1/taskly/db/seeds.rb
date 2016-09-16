# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
	{name: 'Andrew Wiggin', email: 'ender@bs.if.com'},
	{name: 'Unai Herrera', email: 'uacaminoherrera@gmail.com'}
	])
tasks = Task.create([
	{name: "tarea 1 user 1", due_date: DateTime.now, user_id: User.first.id},
	{name: "tarea 2 user 1", due_date: DateTime.now, user_id: User.first.id},
	{name: "tarea 1 user last", due_date: DateTime.now, user_id: User.last.id}
	])	
