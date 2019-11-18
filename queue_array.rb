# queue using array

class Queue
  def initialize
    @body = []
    @front = -1
    @rear = -1
  end

  def is_empty?
   @front == -1 and @rear == -1
  end

  def front_data
    @body[@front]
  end

  def rear_data
    @body[@rear]
  end

  def print_queue
    (@front..@rear).each do |f|
      puts @body[f]
    end
  end

  def push(data)
    @front += 1 if @front == -1
    @body[@rear+1] = data
    @rear += 1
  end

  def pop
    return if @front == -1
    tb_popped = @body[@front]
    @body.delete_at @front
    @rear -= 1
    @front = -1 if @rear == -1
    tb_popped
  end
end
