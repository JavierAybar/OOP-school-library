require './nameable'
require './capitalize'
require './trimmer'
require './rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    rental = Rental.new(book, date, self)
    @rentals.push(rental)
  end

  private

  def of_age?
    @age >= 18
  end
end
