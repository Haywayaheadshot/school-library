class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    person.rental << self
    book.rental << self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
