require './modules/storage'
require 'pry'

module CreateABook
  @@books_arr = []

  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    # binding.pry
    @@books_arr.push(Book.new(title, author).to_json)
    Storage.save_date('books', @@books_arr)
    puts 'Book succesfully created!'
  end
end
