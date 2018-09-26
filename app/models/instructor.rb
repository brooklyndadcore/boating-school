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

  def fail_student(student_name, test_name)
    BoatingTest.all.each do |test|
      if test.student == student_name && test.test_name == test_name && test.instructor == self
        test.test_status = ('failed')
        p test
      end
    end
  end

  def pass_student(student_name, test_name)
    BoatingTest.all.each do |test|
      if test.student == student_name && test.test_name == test_name && test.instructor == self
        test.test_status = ('passed')
        p test
      end
    end
  end

  def boating_tests
    BoatingTest.all.select {|test| test.instructor == self}
  end

end
#
