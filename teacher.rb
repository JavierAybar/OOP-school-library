require './person'

class Teacher < Person
  def initialize(specialization, age, name, parent_permission)
    super(name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
