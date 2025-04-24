class StringCalculator
  # The 'add' method takes a string of comma-separated numbers
  # Returns the sum of those numbers as an integer
  def add(numbers)
    # If the input string is empty, return 0
    return 0 if numbers.empty?

    # Split the comma-separated string 'numbers' into an array of strings
    array_of_strings = numbers.split(',')

    # Convert each string in the array to an integer and calculate the total sum
    # Using 'inject' to iterate through the array and accumulate the sum
    array_of_strings.inject(0) { |sum, num| sum + num.to_i }
  end
end
