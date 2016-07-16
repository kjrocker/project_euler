require 'minitest'
#require 'minitest/rg'

def fib_until(num)
  fib = [1,1]
  until fib.last > num
    fib << fib[-2] + fib[-1]
  end
  return fib[0..-2]
end

def even_sum(fib_array)
  sum = 0
  fib_array.each do |ele|
    ele.even? ? sum += ele : sum = sum
  end
  return sum
end

class FibSumTest < Minitest::Test
  def test_fib_until
    short_fib = fib_until(10)
    assert_equal [1,1,2,3,5,8], short_fib
  end

  def test_even_sum
    test_array = [2,3,4,5,6]
    result = even_sum(test_array)
    assert_equal 12, result
  end
end

if MiniTest.run                                # The Run/Kill Switch
  puts "Tests Passed!"
  puts even_sum(fib_until(4000000))
else
  puts "Tests Failed!"
end
