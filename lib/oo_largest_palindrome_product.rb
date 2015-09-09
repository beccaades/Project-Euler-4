class LargestPalindromeProduct

  def largest_palindrome_product
    palindromes = []
    99.downto(10) do |num_1|
      num_1.downto(10) do |num_2|
        if check_if_palindrome(num_1 * num_2)
          palindromes << (num_1 * num_2)
        end
      end
    end
    palindromes.max
  end

  def check_if_palindrome(product)
    palindrome = product.to_s.split("").reverse.join("").to_i
    true if product == palindrome
  end

end


