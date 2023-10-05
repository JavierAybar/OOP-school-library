require_relative 'app'

class Interface
  def initialize
    @app = App.new()
    
    display_menu
  end

def display_menu
  loop do
  menu_options ="
1 - List all books
2 - List all people
3 - Create a person
4 - Create a book
5 - Create a rental
6 - List all rentals for a given person id
7 - Exit
"
    puts "----Welcome to School Library App!----",
    "",
    "Please choose an option by entering a number:",
    menu_options

    option = gets.chomp.to_i

    case option
    when 1
      @app.list_all_books
    when 2
      @app.list_all_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
     @app.list_all_rental
    when 7
      puts "Thank you for using this app!"
      break
    else
      puts "Invalid choice"
    end
  end  
 end
end

def main
  Interface.new
end

main