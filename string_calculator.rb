class StringCalculator
  # The 'add' method takes a string of comma-separated numbers
  # Returns the sum of those numbers as an integer
  def add(numbers)
    # If the input string is empty, return 0
    return 0 if numbers.empty?

    # Split the string by commas, convert each part to integer, and sum them
    numbers.split(',').map(&:to_i).sum
  end
end
