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
        Student.new(age, classroom, name: name, parent_permission: permission)
        puts 'Student created successfully!'
      when 2
        print 'Specialization: '
        specialization = gets.chomp
        Teacher.new(age, specialization, name: name)
        puts 'Teacher created!'
      end
    else
      puts 'Wrong selection!'
    end
  end
end
