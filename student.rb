require './person'

class Student < Person
  def initialize(age, name, parent_permission)
    super(age, name, parent_permission)
    @classroom = classroom.add_student(self) unless classroom.nil?
  end

  attr_accessor :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end
end
