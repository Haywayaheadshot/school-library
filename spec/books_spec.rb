require './book'
require './person'
require './rental'

describe Book do
  context ' When testing the HelloWorld class ' do
    book = Book.new('All That I AM', 'Haywaya')
    person1 = Person.new(18, name: 'Abubakar', parent_permission: true)

    it 'Create book instance' do
      expect(book.title).to eql('All That I AM')
      expect(book.author).to eql('Haywaya')
    end

    it 'Create book rental' do
      date = '12/12/2012'
      book.add_rental(person1, date)
      rentals_length = book.rental.length
      expect(rentals_length).to eql(1)
    end

    it 'Check instance of Book' do
      expect(book).to be_instance_of(Book)
    end
  end
end
