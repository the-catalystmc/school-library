require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, _name, _parent_permission, **args)
    super(age, name, parent_permission: true, **args)
    @classroom = classroom.add_student(self) unless classroom.nil?
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
