RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      # Test when input is an empty string
      expect(calc.add("")).to eq(0)
    end
  end
end
