require './book'
require './person'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(book, date, person)
    @date = date
    @book = book
    @person = person

    # Establish the bidirectional relationship
    person.rentals << self
    book.rentals << self
  end
end
