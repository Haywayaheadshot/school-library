require './modules/storage'

module ExitApp
  def exit_app
    puts 'Thanks for using my library!'
    Storage.save_data('books', @books_arr)
    Storage.save_data('people', @people_arr)
    Storage.save_data('rental', @rentals_arr)
  end
end
