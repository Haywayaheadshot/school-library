require 'securerandom'
require './nameable'

class Person < Nameable
  # Instance attributes
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age = 10, name = 'Unknown', parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Private Method
  private

  def of_age?
    @age >= 18
  end

  # Public Method
  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
