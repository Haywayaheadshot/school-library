require './cases'
class Main
  def start
   app = Cases.new
   app.on_start
  end
end

Main.new.start