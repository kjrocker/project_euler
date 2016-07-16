require 'minitest'

def prime_sieve(n)
  primes = Array.new

  for i in 0..n-2
   primes[i] = i+2
  end

  index = 0
  while primes[index]**2 <= primes.last
    prime = primes[index]
    primes = primes.select { |x| x == prime || x%prime != 0 }
    index += 1
  end

  return primes
end

def prime_factors(n)
  primes = prime_sieve((n ** 0.5).to_i)
  factors = Array.new
  primes.each do |prime|
    (n % prime) == 0 ? factors << prime : next
  end
  return factors
end

class PrimeFactorTest < Minitest::Test
  def test_prime_sieve
    short_primes = prime_sieve(10)
    assert_equal [2,3,5,7], short_primes
  end

  def test_prime_factors
    test_array = [5,7,13,29]
    assert_equal test_array, prime_factors(13195)
  end
end

if MiniTest.run
  puts prime_factors(600851475143).last
end
