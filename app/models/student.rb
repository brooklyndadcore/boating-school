class Student
  # Student.new("Billy", "Joel")

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def self.full_names
    # [#<Student>,#<Student>,#<Student>]
    # ["", "", ""]

    # .each, .map, .select
    # @@all inside of student
    Student.all.map do |student|
      student.first_name + " " + student.last_name
    end
  end

  def self.find_student(full_name)
    # binding.pry
    Student.all.find do |student|
      student.full_name == full_name
    end
  end

  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(self,test_name,test_status,instructor)
  end
end
