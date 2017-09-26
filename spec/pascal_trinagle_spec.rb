require 'pascal_triangle'

describe PascalTriangle do

  describe "#calculate_triangle" do

    it "returns 1 if given number is 1" do
      expect(PascalTriangle.new(1).calculate_triangle).to eql([[1]])
    end

    it "returns 1, 1 1 if given number is 2" do
      expect(PascalTriangle.new(2).calculate_triangle).to eql([[1],[1,1]])
    end

    it "returns 1, 1 1, 1 2 1, 1 3 3 1 if given number is 4" do
      expect(PascalTriangle.new(4).calculate_triangle).to eql([[1],[1,1],[1,2,1],[1,3,3,1]])
    end

    it "returns false if given parameter not number" do
      expect(PascalTriangle.new("abc").calculate_triangle).to be_falsey
    end

    it "returns false on empty string" do
      expect(PascalTriangle.new("").calculate_triangle).to be_falsey
    end

  end

end
