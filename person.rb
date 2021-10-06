require './corrector'

class Person
  def initialize(id, age, name: 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  attr_reader :id
  attr_accessor :name, :age

  private

  def of_age?
    @age >= 18
  end

  public

  def validate_name(name)
    @corrector.correct_name(name)
  end

  def can_use_services?
    of_age? || @parent_permission ? true : false
  end
end