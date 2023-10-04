require './rental.rb'
require './person.rb'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def create_rental(date, person)
    rental = Rental.new(self, date, person)
    @rentals.push(rental)
  end  
end