require './modules/storage'
require 'pry'

module ListAllBooks
  def list_all_books
    # binding.pry
    # Storage.load_data('books')
    puts 'There\'s no books added yet!' if Storage.load_data('books').empty?
    Storage.load_data('books').map do |char, _value|
      # char.each { |prop, value|
      #   puts prop.value
      # }
      puts char
    end
  end
end
