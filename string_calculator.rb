class StringCalculator
  # The 'add' method takes a string of comma-separated numbers
  # Returns the sum of those numbers as an integer
  def add(numbers)
    # If the input string is empty, return 0
    return 0 if numbers.empty?

    # convert to integer and return
    numbers.to_i
  end
end
