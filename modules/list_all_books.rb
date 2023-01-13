require './modules/storage'

module ListAllBooks
  def list_all_books
    stored_data = Storage.load_data('books')

    puts 'There\'s no books added yet!' if @books_arr.empty? && stored_data.empty?

    if @books_arr.length >= 1
      @books_arr.each do |book|
        puts "Title: #{book['title']} Author: #{book['author']}"
      end
    end

    return unless stored_data.length >= 1

    stored_data.each do |data|
      puts "Title: #{data['title']} Author: #{data['author']}"
    end
  end
end
