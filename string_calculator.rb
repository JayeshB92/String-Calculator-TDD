class StringCalculator
  # The 'add' method takes a string of comma-separated numbers
  # Returns the sum of those numbers as an integer
  def add(numbers)
    # If the input string is empty, return 0
    return 0 if numbers.empty?

    delimiter = /,|\n/ # Default delimiters: comma or newline

    # Check for custom delimiter syntax at the start: "//[delimiter]\n"
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2) # Split into delimiter part and numbers part
      custom_delimiter = parts[0][2..] # Extract delimiter after '//'
      numbers = parts[1] # Remaining number string
      delimiter = Regexp.escape(custom_delimiter) # Escape special regex chars
    end

    # Split the string 'numbers' using the determined delimiter into an array of strings
    array_of_strings = numbers.split(/#{delimiter}/)

    # Convert each string in the array to an integer and calculate the total sum
    # Using 'inject' to iterate through the array and accumulate the sum
    array_of_strings.inject(0) { |sum, num| sum + num.to_i }
  end
end
