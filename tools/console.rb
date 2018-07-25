require_relative '../config/environment'


natsuki = Student.new("Natsuki", "Wada")
prince = Instructor.new("Prince Wilson")


natsuki.add_boating_test(prince, "First Test", "pending")
binding.pry
