require './person'

class Student < Person
  def initialize(classroom, id, age, name = 'Unknown', parent_permission: true)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
