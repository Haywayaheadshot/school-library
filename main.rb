require './app'

class Main
  puts '--------------------------------------------------'
  puts 'Welcome to my library! ͡° ͜ʖ ͡°'

  $user_pick = {
    1 => 'list_all_books',
    2 => 'list_all_people',
    3 => 'create_a_person',
    4 => 'create_a_book',
    5 => 'create_a_rental',
    6 => 'list_all_rentals',
    7 => 'exit'
  }

  def initialize()
    @App = App.new
  end

  def on_start
    puts @App.on_start
    input = gets.chomp.to_i
    show_menu(input)
  end

  def show_menu(par)
    case par
    when 1..6 then @App.send($user_pick[par])
    when 7 then puts 'Thanks for using my library!'
    else puts 'Option doesn\'t exist ¯\_(ﾟ～ﾟ)_/¯, select another one!'
         on_start
    end
  end
end

app_start = Main.new
app_start.on_start
