class Frequency
  def update_frequency(input, lower_limit, upper_limit)
    new_inputs = input.map do |num|
      if num < lower_limit
        lower_limit
      elsif num > upper_limit
        upper_limit
      else
        num
      end
    end

    return new_inputs
  end
end
