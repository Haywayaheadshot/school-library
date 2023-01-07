require './book'
require './person'
require './rental'
require './teacher'
require './student'

class App
  def on_start
    puts '--------------------------------------------------'
    puts 'Select an option: '
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals'
    puts '7 - Exit'
    puts '--------------------------------------------------'
  end

  def list_all_books
    puts 'There\'s no books added yet!' if Book.all.empty?
    Book.all.each do |book|
      puts %(Title: #{book.title}, Author: #{book.author})
    end
  end

  def list_all_people
    puts 'There\'s no people added yet' if Student.all.empty? && Teacher.all.empty?
    Student.all.each do |student|
      puts %([Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
    end
    Teacher.all.each do |teacher|
      puts %([Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
    end
  end

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

  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
    puts 'Book succesfully created!'
  end

  def create_a_rental
    if Book.all.empty? || Person.all.empty?
      puts 'There\'s no persons or books added yet!'
    else
      puts 'Select a book from the following list by number'
      Book.all.each_with_index do |book, index|
        puts %(#{index}\) Title: "#{book.title}", Author: #{book.author})
      end
      chosen_book = gets.chomp.to_i
      Student.all.each_with_index do |student, index|
        puts %(#{index}\) [Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      end
      Teacher.all.each_with_index do |teacher, index|
        puts %(#{index}\) [Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      end
      selected_person = gets.chomp.to_i
      puts 'Date: '
      date = gets.chomp
      Rental.new(date, Book.all[chosen_book], Person.all[selected_person])
      puts 'Rental created succesfully'
    end
  end

  def list_all_rentals
    if Person.all.empty? || Book.all.empty?
      puts 'Please add a person and a book first!'
    else
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      Rental.all.each do |rental|
        if rental.person.id == id_selected
          puts %(#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name})
        else
          puts 'There\'s no rental with that ID'
        end
      end
    end
  end
end
