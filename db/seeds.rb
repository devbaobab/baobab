# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create({"name"=>"English for Beginners", "description"=>"This course is for beginners"})
Course.create({"name"=>"English for Intermediates", "description"=>"This course is for intermediates"})
Course.create({"name"=>"English for Business", "description"=>"This course is for business language"})
Course.create({"name"=>"English for Advanced", "description"=>"This course is for advanced"})