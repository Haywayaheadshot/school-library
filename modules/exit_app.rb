require './modules/storage'

module ExitApp
  def exit_app
    puts 'Thanks for using my library!'
    Storage.save_data('books', @books_arr)
    Storage.save_data('student', @student_arr)
    Storage.save_data('teacher', @teacher_arr)
  end
end
