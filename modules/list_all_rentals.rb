module ListAllRentals
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
