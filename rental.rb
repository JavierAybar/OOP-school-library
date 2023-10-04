require './book.rb'
require './person.rb'

class Rental
    attr_accessor :date
    attr_reader :book, :person

    def initialize(book, date, person)
       @date = date
       @book = book
       @person = person
    end
end