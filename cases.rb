require './app'
class Cases
  puts '--------------------------------------------------'
  puts 'Welcome to my library! ͡° ͜ʖ ͡°'

  def initialize()
    @app = App.new
  end

  def on_start
    puts @app.on_start
    input = gets.chomp.to_i
    show_menu(input)
  end

  def show_menu(par)
    @user_pick = {
      1 => 'list_all_books',
      2 => 'list_all_people',
      3 => 'create_a_person',
      4 => 'create_a_book',
      5 => 'create_a_rental',
      6 => 'list_all_rentals',
      7 => 'exit'
    }

    case par
    when 1..6
      @app.send(@user_pick[par])
      on_start
    when 7
      puts 'Thanks for using my library!'
    else
      puts 'Option doesn\'t exist ¯\_(ﾟ～ﾟ)_/¯, select another one!'
      on_start
    end
  end
end
