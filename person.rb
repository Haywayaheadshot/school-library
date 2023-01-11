# require 'securerandom'
require './nameable'
require './capitalize'
require './trimmer_decorator'
require './rental'

class Person < Nameable
  # Instance attributes
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age = 10, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
    @rental = []
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

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

# person = Person.new(22, 'maximilianus')
# person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name
