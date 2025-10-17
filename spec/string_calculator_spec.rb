require "../string_calculator"
RSpec.describe StringCalculator do
  let(:instance) { StringCalculator.new }
  describe "Empty string input" do
    it "should be 0" do
      expect(instance.add("")).to be == 0
    end
  end
  describe "Single string input" do
    it "should be same value" do
      expect(instance.add("1")).to be == 1
    end
  end
  describe "Multiple string input with ',' seperator" do
    it "should be addition of given input = 6" do
      expect(instance.add("1,2,3")).to be == 6
    end
  end
  describe "Multiple string input with ';' seperator" do
    it "should be addition of given input = 6" do
      expect(instance.add("1;2;3")).to be == 6
    end
  end
  describe "Multiple string input with ';' and ',' seperator" do
    it "should be addition of given input = 10" do
      expect(instance.add("1,2;3;4")).to be == 10
    end
  end
  describe "Multiple string input with ',' seperator and '\n'" do
    it "should be addition of given input = 6" do
      expect(instance.add("\n1,2,3")).to be == 6
    end
  end
  describe "Multiple string input with ',' seperator and '\n' in single quote" do
    it "should be addition of given input = 6" do
      expect(instance.add('\n1,2,3')).to be == 6
    end
  end
  describe "Multiple negative string input" do
    it "should be a exception" do
      expect{instance.add('-1,2,3,-4')}.to raise_error("Negative numbers not allowed <-1,-4>")
    end
  end
  describe "Single negative string input" do
    it "should be a exception" do
      expect{instance.add('1,-2,3,4')}.to raise_error("Negative numbers not allowed <-2>")
    end
  end
end
