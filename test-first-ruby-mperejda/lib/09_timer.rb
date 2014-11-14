class Timer
  attr_accessor :seconds, :time_string, :new_time

  def initialize
    @seconds = 0
    @new_time = Time.new("00:00:00")
    @time_string = (@new_time + @seconds).to_s.split[1]
  end


  def time_string
    @time_string = (@new_time + @seconds).to_s.split[1]
  end
end
