require_relative '../string_calculator' # Load the StringCalculator class

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      # Test when input is an empty string
      expect(calc.add("")).to eq(0)
    end
  end

  it 'returns the number for a single number string' do
    calc = StringCalculator.new
    # Test when input is a single number as string
    expect(calc.add("1")).to eq(1)
  end
end
