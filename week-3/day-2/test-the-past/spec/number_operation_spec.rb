require 'NumberOperation'

NUMBERS_EXAMPLE = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]

describe NumberOperation do
  
  number_operation = NumberOperation.new

  describe "#sum" do
    it "return the sum of all numbers given" do
      expect(number_operation.sum(10, 2, 3, 4, 5, 1, 20)).to eql(45)
    end
  end

  describe "#summation" do
    it "return the sum of the elements of an array multiply by two" do
      expect(number_operation.summation(3) { |val| val * 2 }).to eql(12)
    end
  end

  describe "#min" do
    it "return the min value in an array of numbers" do
      expect(number_operation.min(NUMBERS_EXAMPLE)).to eql(-3456)
    end
  end

  describe "#max" do
    it "return the max value in an array of numbers" do
      expect(number_operation.max(NUMBERS_EXAMPLE)).to eql(123891)
    end
  end
  
end