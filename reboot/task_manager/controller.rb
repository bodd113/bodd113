require_relative "view"
require_relative "task"
require "pry-byebug"

class Controller

  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def add_task
    task_name = @view.ask_for_task_name
    task = Task.new(task_name)
    @repository.add(task)
  end

  def list_tasks
    tasks = @repository.list
    tasks.each_with_index do |task, index|
      if task.completed
        puts "#{index + 1} [x] #{task.name}"
      else
        puts "#{index + 1} [ ] #{task.name}"
      end
    end
  end

  def delete_task
    list_tasks
    task_index = @view.ask_for_task_index
    @repository.delete(task_index)
  end

  def mark_task_as_complete
    list_tasks
    task_index = @view.ask_for_task_index
    task = @repository.find(task_index)
    task.complete
  end

end
