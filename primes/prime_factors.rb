class PrimeFactors
  def self.generate(n)
    2.upto(n).each_with_object(Array.new) do |candidate, primes|
      while n % candidate == 0
        primes.push(candidate)
        n /= candidate
      end
    end
  end
end
