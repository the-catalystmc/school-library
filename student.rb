require './person'

class Student < Person
  def initialize(classroom)
    super(age, name: 'unknown', parent_permission: true)
    @classroom = classroom.add_student(self) unless classroom.nil?
  end

  attr_accessor :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end
end
