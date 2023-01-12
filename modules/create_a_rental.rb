require 'pry'

module CreateARental
  def create_a_rental
    if @people_arr.empty? || @books_arr.empty?
      puts 'There\'s no persons or books added yet!'
    else
      puts 'Select a book from the following list by number'
      @books_arr.each_with_index do |book, index|
        puts %(#{index}\) Title: "#{book['title']}", Author: #{book['author']})
      end
      chosen_book = gets.chomp.to_i
      @people_arr.each_with_index do |person, index|
        puts %(#{index}\) [Student] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']})
      end
      selected_person = gets.chomp.to_i
      puts 'Date: '
      date = gets.chomp
      rental = Rental.new(date,
                          { 'title' => @books_arr[chosen_book]['title'],
                            'author' => @books_arr[chosen_book]['author'] },
                          { 'person' => @people_arr[selected_person]['id'],
                            'name' => @people_arr[selected_person]['name'] })
      @rentals_arr.push({ 'id' => rental.id, 'date' => date, 'person' => rental.person['person'],
                          'title' => rental.book['title'],
                          'author' => rental.book['author'],
                          'name' => rental.person['name'] })
      # binding.pry
      puts 'Rental created succesfully'
    end
  end
end
