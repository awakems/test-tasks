class Timer
  attr_accessor :seconds

  def initialize (seconds = 0)
    @seconds = seconds
  end

  def time_to_s time
    time < 10 ? "0" + time.to_s : time.to_s
  end

  
  def time_string

    hour   = (@seconds / 3600)
    minute = (@seconds % 3600) / 60
    seconds = (@seconds % 60)
    
    formated_time = "#{time_to_s(hour)}:#{time_to_s(minute)}:#{time_to_s(seconds)}"
    
  end
 
end
