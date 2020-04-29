require "StringOperation"

string_operation = StringOperation.new

describe StringOperation do
  describe "#vowel?" do
    it "return true if string is a vowel, otherwise, false" do
      expect(string_operation.vowel?("")).to eql(false)
      expect(string_operation.vowel?("a")).to eql(true)
      expect(string_operation.vowel?("E")).to eql(true)
      expect(string_operation.vowel?("ou")).to eql(false)
      expect(string_operation.vowel?("z")).to eql(false)
    end
  end

  describe "#palindrome?" do
    it "return true if string is a palindrome, otherwise, false" do
      
    end
  end

end