module ListAllRentals
  def list_all_rentals
    stored_rental_data = Storage.load_data('rental')
    if stored_rental_data.empty?
      if @people_arr.empty? || @books_arr.empty?
        puts 'Please add a person and a book first!'
      else
        print 'ID of person: '
        id_selected = gets.chomp.to_i

        if @rentals_arr.length >= 1
          @rentals_arr.each do |rental|
            if rental['person'] == id_selected
              puts %(#{rental['date']}, Book "#{rental['title']}" by #{rental['author']}, rented by #{rental['name']})
            else
              puts 'There\'s no rental with that ID'
            end
          end
        end
      end
    else
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      stored_rental_data.each do |rental|
        if rental['person'] == id_selected
          puts %(#{rental['date']}, Book "#{rental['title']}" by #{rental['author']}, rented by #{rental['name']})
        else
          puts 'There\'s no rental with that ID'
        end
      end
    end
  end
end
