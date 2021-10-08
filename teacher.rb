require './person'

class Teacher < Person
  def initialize(specialization: 'Unknown', **args)
    super(**args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
