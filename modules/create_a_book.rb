require './storage'
require 'pry'

module CreateABook
  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    # binding.pry
    # Book.new(title, author)
    Storage.save_date('books', Book.new(title, author).to_json)
    puts 'Book succesfully created!'
  end
end
