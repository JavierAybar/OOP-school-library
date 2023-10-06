require './person'
require './classroom'

class Student < Person
  attr_accessor :name, :classroom

  def initialize(age, name, parent_permission, classroom)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self)
  end
end
