class Solver
  def factorial(number)
    result = 1
    if number >= 0
      (1..number).each do |n|
        result *= n
      end
      result
    else
      p 'only a positive number'
    end
  end

  def reverse(word)
    word.to_s.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? and (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
