require_relative '../config/environment'

# Declare your variables here~~~
todd = Instructor.new("Todd Philips")
jon = Instructor.new("Jon Philips")
mike = Instructor.new("Mike Mike")
bill = Instructor.new("Bill Philips")
clair = Instructor.new("Clair S")
### students
stew = Student.new("Stewart", "Steves")
bob = Student.new("Bob", "Steves")
pete = Student.new("Peter", "Peterson")
chris = Student.new("Chris", "McChris")

stew.add_boating_test(todd, 'open class 1', 'scheduled')
bob.add_boating_test(jon, 'open class 1', 'scheduled')
pete.add_boating_test(mike, 'open class 1', 'scheduled')
chris.add_boating_test(bill, 'open class 1', 'scheduled')
stew.add_boating_test(clair, 'open class 1', 'scheduled')
pete.add_boating_test(todd, 'open class 1', 'scheduled')

Student.find_student("Stewart Steves")

bill.fail_student(chris, 'open class 1')
bill.pass_student(chris, 'open class 1')
p bill.boating_tests
# don't remove!
# binding.pry
# 0
