class StringCalculator
  def add(numbers_string)
    return 0 if numbers_string.strip.empty?
    
    delimiter = /,|\n/
    if numbers_string.start_with?("//")
      custom_delim, numbers_string = numbers_string.split("\n", 2)
      delim_char = custom_delim[2..-1]
      delimiter = Regexp.escape(delim_char)
    end
    
    numbers = numbers_string.split(/#{delimiter}/).map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    if negatives.any?
      raise ArgumentError, "negative numbers not allowed #{negatives.join(",")}"
    end
    
    numbers.sum
  end
end
