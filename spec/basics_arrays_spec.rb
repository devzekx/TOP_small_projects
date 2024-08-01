require_relative '../basics/arrays/even_or_odd'
require_relative '../basics/arrays/1_of_1'
require_relative '../basics/arrays/double_up'
require_relative '../basics/arrays/el_positivo'
require_relative '../basics/arrays/even_or_odd'
require_relative '../basics/arrays/shuffle'
require_relative '../basics/arrays/the_first_the_last_eternity'

RSpec.describe 'Array Basics' do

  describe '#even_or_odd' do
    it 'returns a new array with only even numbers' do
      expect(even_or_odd([1, 2, 3, 4, 5])).to eq([2, 4])
      expect(even_or_odd([10, 15, 20, 25])).to eq([10, 20])
    end
  end

  describe '#1_of_1' do
    it 'returns true if all characters in the string are unique' do
      # Test cases with unique and non-unique characters
      expect(one_of_one("abcdefg")).to be true
      expect(one_of_one("hello")).to be false
    end

    it 'returns true for an empty string' do
      expect(one_of_one("")).to be true
    end
  end


  describe '#double_up' do
    it 'returns a new array with each value doubled' do
      expect(double_up([1, 2, 3])).to eq([2, 4, 6])
      expect(double_up([-5, 0, 10])).to eq([-10, 0, 20])
    end
  end

  describe '#el_positivo' do
    it 'counts the number of positive numbers in the array' do
      # Test cases with varying numbers of positive and negative values
      expect(el_positivo([1, -2, 3, -4, 5])).to eq(3)
      expect(el_positivo([-10, -5, 0, 2, 8])).to eq(2)
      expect(el_positivo([-3, -2, -1])).to eq(0) # No positive numbers
    end

    it 'returns 0 for an empty array' do
      expect(el_positivo([])).to eq(0)
    end
  end

  describe '#shuffle_array' do
    xit 'randomly shuffles the elements in the array' do
      # Test case to check if the shuffled array contains the same elements
      original_array = [1, 2, 3, 4, 5]
      shuffled_array = shuffle_array(original_array)
      expect(shuffled_array).to include(*original_array) # Check if all original elements are present
      expect(shuffled_array).to_not eq(original_array)  # Check if the order has changed
    end
  end

  describe '#the_first_the_last_eternity' do
    xit 'returns a new array with the first and last elements' do
      # Test cases with different array sizes and content types
      expect(first_and_last([1, 2, 3, 4])).to eq([1, 4])
      expect(first_and_last(["apple", "banana", "orange"])).to eq(["apple", "orange"])
      expect(first_and_last([10])).to eq([10, 10]) # Single-element array
    end

    xit 'returns an empty array if the input array is empty' do
      expect(first_and_last([])).to eq([])
    end
  end
end
