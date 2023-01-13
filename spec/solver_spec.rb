require './solver'

RSpec.describe Solver do
  context 'factorial' do
    it 'should return the factorial' do
      result = Solver.new
      expect(result.factorial(0)).to eq(1)
      expect(result.factorial(1)).to eq(1)
      expect(result.factorial(2)).to eq(2)
      expect(result.factorial(3)).to eq(6)
      expect(result.factorial(5)).to eq(120)
      expect(result.factorial(6)).to eq(720)
      expect(result.factorial(7)).to eq(5040)
      expect(result.factorial(-8)).to eq 'only a positive number'
    end
  end

  context 'reverse' do
    it 'should reverse the word' do
      result = Solver.new
      expect(result.reverse('maman')).to eq 'namam'
      expect(result.reverse('olivier')).to eq 'reivilo'
      expect(result.reverse('theo')).to eq 'oeht'
      expect(result.reverse('henoc')).to eq 'coneh'
    end
  end

  context 'fizzbuzz' do
    it 'should return fizzbuzz' do
      result = Solver.new
      expect(result.fizzbuzz(33)).to eq 'fizz'
      expect(result.fizzbuzz(55)).to eq 'buzz'
      expect(result.fizzbuzz(15)).to eq 'fizzbuzz'
      expect(result.fizzbuzz(105)).to eq 'fizzbuzz'
      expect(result.fizzbuzz(7)).to eq '7'
    end
  end
end
