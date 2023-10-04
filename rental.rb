require './book'
require './person'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(book, date, person)
    @date = date
    @book = book
    @person = person
  end
end
