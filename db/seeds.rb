# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = Course.create({"name"=>"English for Beginners", "description"=>"This course is for beginners"})
u1.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u1.price = 0.00;
u1.save!

u2 = Course.create({"name"=>"English for Intermediates", "description"=>"This course is for intermediates"})
u2.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u2.price = 12.49;
u2.save!

u3 = Course.create({"name"=>"English for Business", "description"=>"This course is for business language"})
u3.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u3.price = 32.19;
u3.save!

u4 = Course.create({"name"=>"English for Advanced", "description"=>"This course is for advanced"})
u4.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
u4.price = 9.99;
u4.save!


c1 = Category.create({"name" => "Beginner"})
c2 = Category.create({"name" => "Intermediate"})
c3 = Category.create({"name" => "Advanced"})

cz1 = Categorization.create({"course_id" => u1.id, "category_id" => c1.id})
cz1 = Categorization.create({"course_id" => u1.id, "category_id" => c2.id})
cz1 = Categorization.create({"course_id" => u2.id, "category_id" => c2.id})
cz1 = Categorization.create({"course_id" => u2.id, "category_id" => c3.id})
cz1 = Categorization.create({"course_id" => u4.id, "category_id" => c3.id})


u1.chapters.create!({"title" => "Chapter 1"})
u1.chapters.create!({"title" => "Chapter 2"})
u1.chapters.create!({"title" => "Chapter 3"})
u1.chapters.create!({"title" => "Chapter 4"})

u2.chapters.create!({"title" => "Chapter 1"})
u2.chapters.create!({"title" => "Chapter 2"})

u3.chapters.create!({"title" => "Chapter 1"})
u3.chapters.create!({"title" => "Chapter 2"})



User.create!(:email => 'user@gmail.com', :password => 'foobar', :password_confirmation => 'foobar')
User.create!(:email => 'khurtious@gmail.com', :password => 'foobar', :password_confirmation => 'foobar')
User.create!(:email => 'dev.baobabclass@gmail.com', :password => 'foobar', :password_confirmation => 'foobar')