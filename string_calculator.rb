class StringCalculator
  # Public method to add numbers from a string
  def add(numbers)
    return 0 if numbers.empty? # If the input string is empty, return 0

    delimiter, number_string = parse_delimiter(numbers)
    split_numbers(number_string, delimiter).sum
  end

  private

  # Parses the input to determine if a custom delimiter is present
  # Returns [delimiter_regex, number_string]
  def parse_delimiter(numbers)
    # Check for custom delimiter syntax at the start: "//[delimiter]\n"
    if numbers.start_with?("//")
      delimiter_line, number_string = numbers.split("\n", 2) # Split into delimiter part and number string
      custom_delimiter = delimiter_line[2..] # Extract delimiter after '//'
      [Regexp.escape(custom_delimiter), number_string] # Escape special regex chars, Remaining number string
    else
      # Default delimiters: comma or newline
      [',|\n', numbers]
    end
  end

  # Splits the number string using the given delimiter and converts to integers
  def split_numbers(number_string, delimiter)
    number_string.split(/#{delimiter}/).map(&:to_i)
  end
end
