require_relative '../string_calculator' # Load the StringCalculator class

RSpec.describe StringCalculator do
  # Define a reusable calculator object for all tests
  let(:calc) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      # Test when input is an empty string
      expect(calc.add("")).to eq(0)
    end

    it 'returns the number for a single number string' do
      # Test when input is a single number as string
      expect(calc.add("1")).to eq(1)
    end

    it 'returns sum for two comma-separated numbers' do
      # Test when input is two numbers separated by comma
      expect(calc.add("1,5")).to eq(6)
    end

    it 'returns sum for multiple comma-separated numbers' do
      # Test with more than two numbers
      expect(calc.add("1,2,3,4,5")).to eq(15)
    end

    it 'handles new lines between numbers' do
      # Input contains both commas and newline as delimiters
      expect(calc.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      # Here ";" is the custom delimiter as in "//[delimiter]\n[numbers…]".
      expect(calc.add("//;\n1;2")).to eq(3)
    end
  end
end
