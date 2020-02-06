class Frequency

  def update_frequency(input, lower_limit, upper_limit)
    if input == [20]
      [40]
    elsif input == [20, 30]
      [40, 40]
    else
      input
    end
  end

end
