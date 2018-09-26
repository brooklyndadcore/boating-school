class Student
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.full_names
    @@all.map {|student| "#{student.first_name} #{student.last_name}" }
  end

  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)
    name_arr = full_name.split(" ")
    @@all.each do |student|
      if name_arr[0] == student.first_name && name_arr[1] == student.last_name
        return student
      end
    end
    return nil

  #BETTER VERSION --> # @@all.find {|student| "#{student.first_name} "#{student.last_name}" == full_name}
  end

end
#
