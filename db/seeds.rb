# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# u1 = Course.create({"name"=>"English for Beginners", "description"=>"This course is for beginners"})
# u1.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
# u1.intro_video_link = "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4";
# u1.subtitle = "subtitle beginners";
# u1.price = 0.00;
# u1.save!
# 
# u2 = Course.create({"name"=>"English for Intermediates", "description"=>"This course is for intermediates"})
# u2.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
# u2.intro_video_link = "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4";
# u2.price = 12.49;
# u2.subtitle = "subtitle intermediates";
# u2.save!
# 
# u3 = Course.create({"name"=>"English for Business", "description"=>"This course is for business language"})
# u3.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
# u3.price = 32.19;
# u3.subtitle = "subtitle busines";
# u3.intro_video_link = "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4";
# u3.save!
# 
# u4 = Course.create({"name"=>"English for Advanced", "description"=>"This course is for advanced"})
# u4.snapshot = File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg")
# u4.price = 9.99;
# u4.subtitle = "subtitle advanced";
# u4.intro_video_link = "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4";
# u4.save!

u1 = {"name"=>"English for Advanced", 
  "description"=>"This course is for advanced",
  "intro_video_link" => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4",
  "snapshot" => File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg"),
  "subtitle" => "subtitle beginners",
  "price" => 9.99
  }
  u2 = {"name"=>"English for Intermediates", 
    "description"=>"This course is for Intermediates",
    "intro_video_link" => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4",
    "snapshot" => File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg"),
    "subtitle" => "subtitle Intermediates",
    "price" => 12.49
    }
    u3 = {"name"=>"English for Business", 
      "description"=>"This course is for Business Language",
      "intro_video_link" => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4",
      "snapshot" => File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg"),
      "subtitle" => "subtitle beginners",
      "price" => 32.19
      }
      u4 = {"name"=>"English for Beginners", 
        "description"=>"This course is for Beginners",
        "intro_video_link" => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4",
        "snapshot" => File.open("#{Rails.root}/mockupDesigns/image/1682_eca0_5.jpeg"),
        "subtitle" => "subtitle Beginners",
        "price" => 0.00
        }

courses = Array.new
courses << u1 << u2 << u3 << u4

#cp1 = u1.chapters.create!({"title" => "Chapter 1"})
# :title, :video_clip_link, :video_script_link
#cp1.lectures.create!({"title" => "lecture 1", "video_clip_link" => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4", "video_script_link" => ""})
#cp1.lectures.create!({"title" => "lecture 2", "video_clip_link" => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4", "video_script_link" => ""})

# 
# u1.chapters.create!({"title" => "Chapter 2"})
# u1.chapters.create!({"title" => "Chapter 3"})
# u1.chapters.create!({"title" => "Chapter 4"})
# 
# u2.chapters.create!({"title" => "Chapter 1"})
# u2.chapters.create!({"title" => "Chapter 2"})
# 
# u3.chapters.create!({"title" => "Chapter 1"})
# u3.chapters.create!({"title" => "Chapter 2"})

g1 = Group.create({"name" => "admin"})
g2 = Group.create({"name" => "lecturer"})
g3 = Group.create({"name" => "student"})

users = Array.new
s1 = User.create!(:email => 'user@gmail.com', :password => 'foobar', :password_confirmation => 'foobar', :fullname => "user")
users << s1
s2 = User.create!(:email => 'khurtious@gmail.com', :password => 'foobar', :password_confirmation => 'foobar', :fullname => "Khurt")
users << s2
s3 = User.create!(:email => 'dev.baobabclass@gmail.com', :password => 'foobar', :password_confirmation => 'foobar', :fullname => "developer")
users << s3
s4 = User.create!(:email => 'baobabclass@gmail.com', :password => 'foobar', :password_confirmation => 'foobar', :fullname => "Admin")
users << s4

authours = Array.new
authours << s3 << s4

mem1 = Membership.create({"user_id" => s1.id, "group_id" => g3.id})

mem1 = Membership.create({"user_id" => s2.id, "group_id" => g3.id})
mem1 = Membership.create({"user_id" => s2.id, "group_id" => g2.id})

mem1 = Membership.create({"user_id" => s4.id, "group_id" => g2.id})

mem1 = Membership.create({"user_id" => s3.id, "group_id" => g1.id})

job1 = Job.create({"title"=> "Web Developer", "description" => "Web Application Designer based on Ruby on Rails"})
job2 = Job.create({"title"=> "Student", "description" => "Student in any kind of institution"})
job3 = Job.create({"title"=> "Teacher at BAOBAB", "description" => "teaches business english in BAOBAB class"})

emp1 = Employment.create({:user_id => s1.id , :job_id => job2.id })
emp2 = Employment.create({:user_id => s2.id , :job_id => job1.id })
emp3 = Employment.create({:user_id => s3.id , :job_id => job1.id })
emp4 = Employment.create({:user_id => s4.id , :job_id => job3.id })

int1 = Interest.create({"title" => "Technology", "description" => "technical" })
int2 = Interest.create({"title" => "Arts", "description" => "artistic" })
int3 = Interest.create({"title" => "Music", "description" => "musics" })

prefs = Array.new

prefs << Preference.create({:user_id => s1.id , :interest_id => int1.id })
prefs << Preference.create({:user_id => s1.id , :interest_id => int2.id })
prefs << Preference.create({:user_id => s1.id , :interest_id => int3.id })

prefs << Preference.create({:user_id => s2.id , :interest_id => int2.id })
prefs << Preference.create({:user_id => s2.id , :interest_id => int3.id })

prefs << Preference.create({:user_id => s3.id , :interest_id => int1.id })

prefs << Preference.create({:user_id => s3.id , :interest_id => int2.id })

categories = Array.new
categories << Category.create({"name" => "경영/경제"})
categories << Category.create({"name" => "어학"})
categories << Category.create({"name" => "예술"})
categories << Category.create({"name" => "인문/사회"})
categories << Category.create({"name" => "스포츠"})
categories << Category.create({"name" => "취미"})
categories << Category.create({"name" => "생활"})
categories << Category.create({"name" => "자연/공학"})
categories << Category.create({"name" => "컴퓨터/IT"})
categories << Category.create({"name" => "직무/취업"})
categories << Category.create({"name" => "학업"})

### create example courses
number_courses = 4+rand(4)

saved_courses = Array.new 
number_courses.times do
  
  course = courses.sample
  number_of_chapter_for_each_course = 5+rand(4)
  chapters = Array.new
  chapter_counter = 1
  lecture_counter = 1
  
  ## create chapters
  number_of_chapter_for_each_course.times do
    
    lectures = Array.new    
    number_of_lectures_for_each_chapter = 2+rand(5)

    ## create lectures
    number_of_lectures_for_each_chapter.times do
      lecture = Lecture.new :title => "Lecture #{lecture_counter}", :video_clip_link => "rtmp://jb1587vol00-jb1587.ktics.co.kr/jb1587vol00/_definst_&file=movie.mp4" , :video_script_link => "blubb.srt"
      lectures << lecture
      lecture_counter += 1  
    end
    
    chapter = Chapter.new :title => "Chapter #{chapter_counter}", :lectures => lectures
    chapters << chapter
    chapter_counter += 1
    lectures = nil
    
  end   
  
  ## create course
  course["chapters"] = chapters
  course["authours"] = [Authour.new({ "user_id" => authours.sample.id })]
  saved_courses << Course.create(course)
  chapters = nil
  course = nil
end

## assign categories
saved_courses.each do |co|
  (1+rand(3)).times do 
    Categorization.create({"course_id" => co.id, "category_id" => categories.sample.id })
  end
end


 
# cz1 = Categorization.create({"course_id" => u1.id, "category_id" => categories.sample.id })
# cz1 = Categorization.create({"course_id" => u1.id, "category_id" => categories.sample.id })
# cz1 = Categorization.create({"course_id" => u2.id, "category_id" => categories.sample.id })
# cz1 = Categorization.create({"course_id" => u2.id, "category_id" => categories.sample.id })
# cz1 = Categorization.create({"course_id" => u4.id, "category_id" => categories.sample.id})

# 
# a1 = Authour.create!({:course_id => u1.id, :user_id => s4.id})
# a1 = Authour.create!({:course_id => u2.id, :user_id => s4.id})
# a1 = Authour.create!({:course_id => u3.id, :user_id => s3.id})
# a1 = Authour.create!({:course_id => u4.id, :user_id => s4.id})
# 
# o1 = Take.create!(:course_id => u1.id, :user_id => s3.id, )
# o1 = Take.create!(:course_id => u1.id, :user_id => s2.id, )
# o1 = Take.create!(:course_id => u1.id, :user_id => s1.id, )
# 
# 
# o1 = Take.create!(:course_id => u2.id, :user_id => s2.id, )
# o1 = Take.create!(:course_id => u3.id, :user_id => s3.id, )
# o1 = Take.create!(:course_id => u4.id, :user_id => s3.id, )
#o1.setAuthour(s4.id)
#o1.save!

