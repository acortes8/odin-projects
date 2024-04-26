# steps
# 1.) "describle" the class
# 2.) "describe" the method example group
# 3.) write your test case/example with "it"
# 4.) write expectation using "expect". (chained to ".to" for positive expectations, ".to_not/.not_to" for negative expectations)

require './lib/calculator' # tell spec where class is being defined

describe Calculator do # example group/collection of tests
  describe "#add" do # what method we're testing
    it "returns the sum of two numbers" do # it keyword defines an individual example
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2, 5)).to eql(10)
    end

    it "returns the product of two or more numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2, 5, 3)).to eql(30)
    end
  end
end