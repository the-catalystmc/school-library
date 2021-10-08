require './student'
require './teacher'
require './book'
require './rental'

class App
  @@books = []
  @@people = []
  @exit_program = false

  puts 'Welcome to School Library App!'

  def choose_option
    puts
    puts 'Please choose an option by entering a number:'
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

  def list_books
    if @@books.empty?
      puts 'There are no books created!'
    else
      @@books.each do |e|
        puts "Title: \"#{e.title}\", Author: #{e.author}"
      end
    end
  end

  def list_people
    if @@people.empty?
      puts 'There are no people created!'
    else
      @@people.each do |e|
        puts "[#{e.class}] Name: #{e.name}, ID: #{e.id}, Age: #{e.age}"
      end
    end
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
