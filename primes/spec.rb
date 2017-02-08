gem 'minitest', '~>5'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'prime_factors'

class PrimeFactorsTest < Minitest::Test
  def test_one
    assert_equal [], PrimeFactors.generate(1)
  end

  def test_two
    assert_equal [2], PrimeFactors.generate(2)
  end

  def test_three
    assert_equal [3], PrimeFactors.generate(3)
  end

  def test_four
    assert_equal [2,2], PrimeFactors.generate(4)
  end

  def test_six
    assert_equal [2,3], PrimeFactors.generate(6)
  end

  def test_eight
    assert_equal [2,2,2], PrimeFactors.generate(8)
  end

  def test_nine
    assert_equal [3,3], PrimeFactors.generate(9)
  end
end
