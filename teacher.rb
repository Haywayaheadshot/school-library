require './person'
class Teacher < Person
  attr_accessor :specialization

  def initialize(name = 'Unknown', age, specialization)
    super(age, name: name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?()
    true
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
