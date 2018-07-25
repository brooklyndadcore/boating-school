class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # prince.boating_tests
  def boating_tests
    # .each, .map, .select, .find
    BoatingTest.all.select do |boating_test|
      boating_test.instructor == self
    end
    # Iterate through all boating tests
    # Checks to see if the instructor is prince
  end

  def students
    # Returns an array of students that this
    # instructor has done a boating test for
    boating_tests.map do |boating_test|
      boating_test.student
    end
  end

  def fail_student(student_name, test_name)
    # Call the instructor's boating tests
    # Iterate over all of those boating tests
    # and find the one that matches student name && test_name
    found_boating_test = self.boating_tests.find do |boating_test|
      boating_test.student.full_name == student_name && boating_test.test_name == test_name
    end

    found_boating_test.test_status = "failed"
  end

  def pass_student(student_name, test_name)

    found_boating_test = self.boating_tests.find do |boating_test|
      boating_test.student.full_name == student_name && boating_test.test_name == test_name
    end

    found_boating_test.test_status = "passed"
  end
end
