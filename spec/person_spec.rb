require './person'
require './book'

describe Person do
  context 'check for correct values passed through person class ' do
    new_person = Person.new(16, name: 'Hector', parent_permission: true)
    it 'check for an instance of person age' do
      expect(new_person.age).to eql(16)
    end
    it 'check for an instance of person name' do
      expect(new_person.name).to eql('Hector')
    end
    it 'check for an instance of person parent_permission' do
      expect(new_person.can_use_services?).to eql(true)
    end
    it 'Check if is instantiated from person' do
      expect(new_person).to be_instance_of(Person)
    end

    it 'Check if the name is correct from person' do
      expect(new_person.correct_name).to eql('Hector')
    end

    it 'Check if the age is = or less than from person' do
      age = new_person.send(:of_age?)
      expect(age).to eql(false)
    end

    it 'Create person rental' do
      date = '12/01/2023'
      new_book = Book.new('Lord of the Rings', 'Tolkien')
      new_person.add_rental(new_book, date)
      rentals_length = new_person.rental.length
      expect(rentals_length).to eql(1)
    end
  end
end
