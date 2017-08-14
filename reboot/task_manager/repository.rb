require "pry-byebug"

class Repository

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def list
    return @tasks
  end

  def find(task_index)
    return @tasks[task_index]
  end

  def delete(task_index)
    @tasks.delete_at(task_index)
  end

end
