module ListAllPeople
  def list_all_people
    stored_student_data = Storage.load_data('student')
    stored_teacher_data = Storage.load_data('teacher')

    puts 'There\'s no people added yet' if stored_student_data.empty? && stored_teacher_data.empty?
    if stored_student_data.length >= 1
      stored_student_data.each do |student|
        puts %([Student] Name: #{student['name']}, Age: #{student['age']})
      end
    end
    return unless stored_teacher_data.length >= 1

    stored_teacher_data.each do |teacher|
      puts %([Teacher] Name: #{teacher['name']}, Age: #{teacher['age']})
    end
  end
end
