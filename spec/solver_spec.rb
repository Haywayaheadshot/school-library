require './TDD/solver'

describe Solver do
  context 'Check the values passed through factorial class' do
    instance = Solver.new
    fact_num = instance.factorial(5)
    fact_num2 = instance.factorial(0)
    fact_num3 = instance.factorial(-1)

    rev_word = instance.reverse('hello')

    fizz_one = instance.fizzbuzz(6)

    fizz_two = instance.fizzbuzz(10)

    fizz_three = instance.fizzbuzz(15)

    fizz_four = instance.fizzbuzz(7)

    it 'Check for the factorial of 5' do expect(fact_num).to eql(120) end

    it 'Check for the factorial of 0' do expect(fact_num2).to eql(1) end

    it 'Check for the factorial of -1' do
      expect(fact_num3).to eql('The number is a negative number')
    end

    it 'Check for the reversal of Hello' do
      expect(rev_word).to eql('olleh')
    end

    it 'Check for fizzbuzz of 6' do
      expect(fizz_one).to eql('fizz')
    end

    it 'Check for fizzbuzz of 10' do
      expect(fizz_two).to eql('buzz')
    end

    it 'Check for fizzbuzz of 15' do
      expect(fizz_three).to eql('fizzbuzz')
    end

    it 'Check for fizzbuzz of 7' do
      expect(fizz_four).to eql('7')
    end
  end
end
