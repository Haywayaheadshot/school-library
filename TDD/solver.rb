class Solver
    def factorial(n)
        return 'The number is a negative number' if n.negative?
        return 1 unless n > 0
        n * factorial(n-1)
    end

    def reverse(word)
        word.reverse
    end

    def fizzbuzz(n)
    return "fizzbuzz" if (n % 3).zero? && (n % 5).zero?
    return "fizz" if (n % 3).zero?
    return "buzz" if (n % 5).zero?
    n.to_s
    end
end