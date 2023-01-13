require './modules/storage'

module CreateAPerson
  def create_a_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    creation = gets.chomp.to_i
    if [1, 2].include?(creation)
      print 'Please input Name: '
      name = gets.chomp
      print 'Please input Age: '
      age = gets.chomp
      case creation
      when 1
        print 'Classroom: '
        classroom = gets.chomp
        print 'Do they have parent permission? [Y/N]: '
        permission = gets.chomp
        student = Student.new(age, classroom, name: name, parent_permission: permission)
        @people_arr.push({ 'age' => student.age, 'classroom' => student.classroom, 'name' => name,
                           'parent_permission' => permission, 'id' => student.id })
        puts 'Student created successfully!'
      when 2
        print 'Specialization: '
        specialization = gets.chomp
        teacher = Teacher.new(age, specialization, name: name)
        @people_arr.push({ 'age' => teacher.age, 'specialization' => teacher.specialization, 'name' => name,
                           'id' => teacher.id })
        puts 'Teacher created!'
      end
    else
      puts 'Wrong selection!'
    end
  end
end
