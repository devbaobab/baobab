# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = Course.create({"name"=>"English for Beginners", "description"=>"This course is for beginners"})
u1.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u1.save!
u1 = Course.create({"name"=>"English for Intermediates", "description"=>"This course is for intermediates"})
u1.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u1.save!
u1 = Course.create({"name"=>"English for Business", "description"=>"This course is for business language"})
u1.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u1.save!
u1 = Course.create({"name"=>"English for Advanced", "description"=>"This course is for advanced"})
u1.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u1.save!