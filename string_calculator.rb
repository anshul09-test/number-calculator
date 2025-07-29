class StringCalculator
  def add(numbers_string)
    return 0 if numbers_string.strip.empty?
    delimiter = /,|\n/
    numbers = numbers_string.split(/#{delimiter}/).map(&:to_i)
    numbers.sum
  end
end
