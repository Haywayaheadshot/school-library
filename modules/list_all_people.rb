module ListAllPeople
  def list_all_people
    stored_people_data = Storage.load_data('people')
    if @people_arr.empty? && stored_people_data.empty?
      puts 'There\'s no people added yet'
    elsif @people_arr.length >= 1
      @people_arr.each do |person|
        if person.key?('specialization')
          puts %([Teacher] Name: #{person['name']}, ID: #{person['id']},
          Age: #{person['age']}, Specialization: #{person['specialization']})
        else
          puts %([Student] Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']})
        end
      end
    else
      stored_people_data.each do |person|
        if person.key?('specialization')
          puts %([Teacher] Name: #{person['name']}, ID: #{person['id']},
          Age: #{person['age']}, Specialization: #{person['specialization']})
        else
          puts %([Student] Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']})
        end
      end
    end
  end
end
