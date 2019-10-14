class Timer
  attr_reader :seconds, :minutes, :hours, :time_string
  def initialize()
    @hours = 0
    @minutes = 0 
    @seconds = 0
    @time_string = "00:00:00"
  end
  def seconds=(seconds)
    @seconds = seconds
    format_string()
  end

  def format_string()
    @hours = @seconds / 3600
    @minutes = (seconds - hours * 3600 )/60
    @seconds = @seconds % 60
    @time_string = "%02d:%02d:%02d" %[hours,minutes,seconds]
  end
  #write your code here
end