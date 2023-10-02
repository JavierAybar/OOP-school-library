require './person'

class Teacher < Person
  def initialize(specialization, age, id, name = 'Unknown', parent_permission: true)
    super(id, name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
