require './person'
require './classroom.rb'

class Student < Person
  attr_accessor :name
  attr_accessor :classroom

  def initialize(classroom, age, name, parent_permission: true)
    super(age, name)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self)
  end  
end
