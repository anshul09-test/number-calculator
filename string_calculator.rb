class StringCalculator
  def add(numbers_string)
    return 0 if numbers_string.strip.empty?
    return numbers_string.to_i if numbers_string =~ /^\d+$/
  end
end
