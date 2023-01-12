require './teacher'
require './person'

describe Teacher do
  context 'check for correct values passed through teacher class ' do
    new_teacher = Teacher.new(55, 'English', 'Mark')
    it 'check for an instance of teacher age' do
      expect(new_teacher.age).to eql(55)
    end

    it 'check for an instance of teacher name' do
      expect(new_teacher.name).to eql('Mark')
    end

    it 'check for an instance of teacher specialization' do
      expect(new_teacher.specialization).to eql('English')
    end

    it 'check for an instance of teacher can use service' do
      expect(new_teacher.can_use_services?).to eql(true)
    end
  end
end
