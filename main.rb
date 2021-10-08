require './student'
require './teacher'
require './book'
require './rental'

class App
  @no_of_customers = 0
  @books = []
  @people = []
  @exit_program = false

  puts 'Welcome to School Library App!'

  def choose_option
    puts
    puts 'Please choose an option by enterin a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    puts

    print 'Option: '
    gets.chomp
  end

  def run
    loop do
      case choose_option
      when '1'
        list_books
      when '2'
        list_people
      when '3'
        create_person
      when '4'
        create_book
      when '5'
        create_rental
      when '6'
        list_rentals_by_id
      when '7'
        exit_program = true
      else
        puts 'That\'s not a correct option'
      end
      break if exit_program
    end
  end
end

def main
  app = App.new
  app.run
end

main
