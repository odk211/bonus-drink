class Eratos
  def initialize(limit)
    @limit = limit.to_i
  end

  def prime_numbers
    Enumerator.new do |primes|
      numbers = (2..@limit).to_a
      up_to = Math.sqrt(@limit)

      until numbers.empty?
        prime = numbers.shift
        primes << prime
        if prime <= up_to
          numbers.reject! { |n| (n % prime).zero? }
        end
      end
    end.to_a
  end

end

n, = ARGV
if n
  puts Eratos.new(n).prime_numbers.join(", ")
end
