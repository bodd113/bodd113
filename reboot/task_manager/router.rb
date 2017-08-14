
require "pry-byebug"
class Router

  def initialize(controller)
    @controller = controller
    @continue = true
  end

  def run
    while @continue
      puts "Please enter the number of the action you want to perform:
            1 - Add a task
            2 - List tasks
            3 - Delete a task
            4 - Mark task as complete
            5 - Exit task_manager"
      user_choice = gets.chomp.to_s
      case user_choice
      when "1"
        @controller.add_task
      when "2"
        @controller.list_tasks
      when "3"
        @controller.delete_task
      when "4"
        @controller.mark_task_as_complete
      when "5"
        @continue = false
      else
        puts "Please enter a valid action number"
      end
    end
  end

end
