require 'minitest'

# Extend String class w/ palindrome function
class String
  def palindrome?
    letters = self.downcase.scan(/\w/)
    letters == letters.reverse
  end
end

class PalindromeTest < Minitest::Test
  def test_palindrome
    true_str = "A man, a plan, a canal, panama"
    false_str = "testing"
    assert_equal true, true_str.palindrome?
    assert_equal false, false_str.palindrome?
  end
end

if MiniTest.run
  puts "Hi!"
end
