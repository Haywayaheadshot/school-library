require './classroom'
require './student'

describe ClassRoom do
  context 'Test when passing correct values to ClassRoom' do
    classroom = ClassRoom.new('Classroom')
    student = Student.new(10, 1, name: 'Lucas', parent_permission: true)
    it 'Test if is instantiated from Classroom' do
      expect(classroom).to be_instance_of ClassRoom
    end

    it 'Return the classroom label when called' do
      expect(classroom.label).to eql 'Classroom'
    end

    it 'Should add student to the student array' do
      classroom.add_student(student)
      students_length = classroom.students.length
      expect(students_length).to eql(1)
    end
  end
end
