require './student'
require './classroom'
require './person'
require './rental'
require './book'
require './teacher'

class App
  def initialize
    @books = []
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_books
    if @books.empty?
      puts 'No books available'
    else
      @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
  end

  def list_all_people
    if @people.empty?
      puts 'No people available'
    else
      @people.each { |people| puts "[#{people.class}] Name: #{people.name}, ID: #{people.id}, Age: #{people.age}" }
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2) [Input the number]:'
    option = gets.chomp.to_i
    case option
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid option'
    end
  end

  def create_student
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Name: '
    name = gets.chomp
    puts 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase
    @people << (Student.new(age, name, parent_permission))
    puts 'Person created successfully'
  end

  def create_teacher
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Name: '
    name = gets.chomp
    puts 'specialization: '
    specialization = gets.chomp
    @people << (Teacher.new(age, name, specialization))
    puts 'Person created successfully'
  end

  def create_book
    puts 'Title: '
    title = gets.chomp
    puts 'Author: '
    author = gets.chomp
    @books << (Book.new(title, author))
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_select = gets.chomp.to_i

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |people, index|
      puts "#{index}) #{people.class} Name: #{people.name}, ID: #{people.id}, Age: #{people.age}"
    end
    people_select = gets.chomp.to_i

    puts 'Date: '
    date = gets.chomp
    @rentals << (Rental.new(@books[book_select], date, @people[people_select]))
    puts 'Rental created successfuly'
  end

  def list_all_rental
    puts 'ID of person: '
    person_id = gets.chomp.to_i
    filtered = @rentals.select { |rental| rental.person.id == person_id }
    filtered.each do |rental|
      puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
