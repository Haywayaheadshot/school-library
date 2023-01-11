module ListAllPeople
  def list_all_people
    stored_student_data = Storage.load_data('student')
    stored_teacher_data = Storage.load_data('teacher')
    if @student_arr.empty? && @teacher_arr.empty? && stored_student_data.empty? && stored_teacher_data.empty?
      puts 'There\'s no people added yet'
    end
    if @student_arr.length >= 1
      @student_arr.each do |student|
        puts %([Student] Name: #{student['name']}, Age: #{student['age']})
      end
    end
    if @teacher_arr.length >= 1
      @teacher_arr.each do |teacher|
        puts %([Teacher] Name: #{teacher['name']}, Age: #{teacher['age']})
      end
    end
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
