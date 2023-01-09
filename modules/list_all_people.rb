module ListAllPeople
  def list_all_people
    puts 'There\'s no people added yet' if Student.all.empty? && Teacher.all.empty?
    Student.all.each do |student|
      puts %([Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
    end
    Teacher.all.each do |teacher|
      puts %([Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
    end
  end
end
