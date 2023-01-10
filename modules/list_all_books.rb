require './storage'

module ListAllBooks
  def list_all_books
    puts 'There\'s no books added yet!' if Book.all.empty?
    Book.all.each do |book|
      puts %(Title: #{book.title}, Author: #{book.author})
    end
  end
end
