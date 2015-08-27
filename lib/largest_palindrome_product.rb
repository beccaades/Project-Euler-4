def largest_palindrome_product
  num_1 = 99
 
  palindromes = []
  until num_1 == 0
    num_2 = num_1 - 1
    while num_2 > 0
      product = num_1 * num_2
      possible_palindrome = check_if_palindrome(product)
      if possible_palindrome == true
        palindromes << product
      end
      num_2 -= 1
    end
    num_1 -= 1
  end
  largest_palindrome = palindromes.max
end

def check_if_palindrome(product)
  palindrome = product.to_s.split("").reverse.join("").to_i
  true if product == palindrome
end