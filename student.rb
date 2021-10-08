require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom: nil, **args)
    super(**args)
    @classroom = classroom.add_student(self) unless classroom.nil?
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
