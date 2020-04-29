require "./lib/calculator"

describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
  end
  
  describe "#multiply" do
    it "returns the multiplication of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3, 5)).to eql(15)
    end
  end

  describe "#divide" do
    it "returns the division of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(6, 2)).to eql(3)
    end
  end

  describe "#subtract" do
    it "returns the subtraction of two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(4, 7)).to eql(-3)
    end
  end
end