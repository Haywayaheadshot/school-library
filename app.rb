require './book'
require './person'
require './rental'
require './teacher'
require './student'
require './modules/on_start'
require './modules/list_all_books'
require './modules/list_all_people'
require './modules/create_a_person'
require './modules/create_a_book'
require './modules/create_a_rental'
require './modules/list_all_rentals'

class App
  include OnStart
  include ListAllBooks
  include ListAllPeople
  include CreateAPerson
  include CreateABook
  include CreateARental
  include ListAllRentals
end
