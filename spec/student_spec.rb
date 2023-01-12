require './student'

describe Student do
  context 'check for correct values passed through student class ' do
    new_student = Student.new(14, 'C1', name: 'Theo', parent_permission: true)

    it 'check for an instance of student age' do
      expect(new_student.age).to eql(14)
    end

    it 'check classroom from student class' do
      expect(new_student.classroom).to eql('C1')
    end

    it 'check classroom from student class' do
      expect(new_student.play_hooky).to eql('¯(ツ)/¯')
    end
  end
end
