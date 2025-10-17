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
end
