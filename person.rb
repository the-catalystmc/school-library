require './corrector'
require './rental'

class Person
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age:, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @corrector = Corrector.new
    @name = validate_name(name)
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

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

  def add_rental(book, date)
    Rental.new(date, self, book)
  end
end
