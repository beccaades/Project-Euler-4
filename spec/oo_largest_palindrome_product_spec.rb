describe "LargestPalindromeProduct" do
  describe '#largest_palindrome_product' do
    it 'returns the largest palindrome product when given a two digit number' do
      expect(LargestPalindromeProduct.new.largest_palindrome_product).to eq(9009)
    end
  end
end