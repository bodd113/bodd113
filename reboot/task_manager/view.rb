class View

  def ask_for_task_name
    puts "Please enter the name of the task you wish to add to your list"
    return gets.chomp.to_s
  end

  def ask_for_task_index
    puts "Please enter task-index"
    return gets.chomp.to_i - 1
  end

end
