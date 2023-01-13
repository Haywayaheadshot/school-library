require './rental'

describe Rental do
  context 'check for correct values passed through rental class ' do
    new_person = Person.new(16, name: 'Hector', parent_permission: true)
    new_book = Book.new('All That I AM', 'Haywaya')
    new_date = '12/01/2023'
    new_rental = Rental.new(new_date, new_book, new_person)

    it 'check for an instance of rental' do
      expect(new_rental).to be_instance_of(Rental)
    end
  end
end
