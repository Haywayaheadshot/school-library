require './decorator'
require './person'
require './nameable'
require './trimmer_decorator'
require './capitalize'

describe 'Decorator' do
  context '' do
    person = Person.new(15, name: 'Trypanosomiasis', parent_permission: true)
    nameable = Nameable.new
    trimmed_name = TrimmerDecorator.new(person)
    it 'Test should return true when checking the instance of Nameable' do
      expect(nameable).to be_instance_of(Nameable)
    end
    it 'Test nameable to throw raise NotImplementedError' do
      expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
    it 'Test should return trimmed name' do
      expect(trimmed_name.correct_name.length).to be <= 10
    end
    it 'Test should return capitalized name' do
      person = Person.new(15, name: 'jackie', parent_permission: true)
      capitalized = CapitalizeDecorator.new(person)
      expect(capitalized.correct_name).to eql 'Jackie'
    end
  end
end
