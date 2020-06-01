require_relative('../models/member')
require_relative('../models/gym_class')
require_relative('../models/booking')
require('pry-byebug')


GymClass.delete_all()
Member.delete_all()

member1 = Member.new({"first_name" => "Vince", "last_name" => "Vaughn", "email" => "vince@gmail.com"})
member2 = Member.new({"first_name" => "Christine", "last_name" => "Taylor", "email" => "christine@hotmail.com"})
member3 = Member.new({"first_name" => "Justin", "last_name" => "Long", "email" => "justin@aol.com"})

member1.save()
member2.save()
member3.save()

gym_class1 = GymClass.new({"gym_class_type" => "Crossfit", "class_time" => "0600"})
gym_class2 = GymClass.new({"gym_class_type" => "Yoga", "class_time" => "1000"})
gym_class3 = GymClass.new({"gym_class_type" => "Olympic Lifting", "class_time" => "1900"})
gym_class4 = GymClass.new({"gym_class_type" => "Pilates", "class_time" => "1800"})

gym_class1.save()
gym_class2.save()
gym_class3.save()
gym_class4.save()





binding.pry
nil
