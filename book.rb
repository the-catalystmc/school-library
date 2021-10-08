require './rental'
class Book
  def initialize(title: 'Unknown', author: 'Unknown')
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author, :rentals

  def add_rental(person, date)
    Rental.new(date, person, self)
  end
end
