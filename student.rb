require './person'
require './classroom'

class Student < Person
  attr_accessor :name, :classroom

  def initialize(classroom, age, name, parent_permission)
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
