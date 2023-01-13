class Solver
  def factorial(_num)
    return 'The number its negative' if n.negative?
    return 1 unless n.positive?

    n * factorial(n - 1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(_num)
    return 'fizzbuzz' if (n % 3).zero? && (n % 5).zero?
    return 'fizz' if (n % 3).zero?
    return 'buzz' if (n % 5).zero?

    n.to_s
  end
end
