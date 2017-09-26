require 'pascal_triangle'

describe PascalTriangle do

  let(:pascal_triangle_1) do
    PascalTriangle.new(1)
  end
  
  let(:pascal_triangle_2) do
    PascalTriangle.new(2)
  end

  let(:pascal_triangle_4) do
    PascalTriangle.new(4)
  end

  let(:pascal_triangle_invalid) do
    PascalTriangle.new('abc')
  end

  let(:pascal_triangle_empty) do
    PascalTriangle.new('')
  end

  describe "#calculate_triangle" do

    context "given 1" do
      it "returns 1" do
        expect(pascal_triangle_1.calculate_triangle).to eql([[1]])
      end
    end

    context "given 2" do
      it "returns [1],[1,1]" do
        expect(pascal_triangle_2.calculate_triangle).to eql([[1],[1,1]])
      end
    end

    context "given 4" do
      it "returns [1],[1,1],[1,2,1],[1,3,3,1]" do
        expect(pascal_triangle_4.calculate_triangle).to eql([[1],[1,1],[1,2,1],[1,3,3,1]])
      end
    end

    context "given abc" do
      it "returns false" do
        expect(pascal_triangle_invalid.calculate_triangle).to be_falsey
      end
    end

    context "given empty string" do
      it "returns false" do
        expect(pascal_triangle_invalid.calculate_triangle).to be_falsey
      end
    end
  end

end
