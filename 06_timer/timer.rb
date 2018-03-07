class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds
    return @seconds
  end

  def time_string
    seconds = "00"
    minutes = "00"
    hours = "00"

    if (@seconds > 0 and @seconds < 10)
      seconds = '0' + @seconds.to_s
    elsif @seconds > 10
      seconds = @seconds
    end

    while @seconds > 60
      @seconds = @seconds - 60
      seconds = @seconds
      minutes = minutes.to_i + 1
    end

    while minutes.to_i > 60
      minutes = minutes - 60
      hours = hours.to_i + 1
    end

    if (minutes.to_i > 0 and minutes.to_i < 10)
      minutes =  '0' + minutes.to_s
    end

    if (seconds.to_i > 0 and seconds.to_i < 10)
      seconds =  '0' + seconds.to_s
    end

    if (hours.to_i > 0 and hours.to_i < 10)
      hours =  '0' + hours.to_s
    end
    return hours.to_s+ ":" + minutes.to_s + ":" + seconds.to_s
  end
end
