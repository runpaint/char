describe Char, :expands_on_nfkc? do
  it "returns true for characters with the XO_NFKC property" do
    Char.new(0x1D15E).should be_expands_on_nfkc
    Char.new(0x00A8).should be_expands_on_nfkc
    Char.new(0x00BD).should be_expands_on_nfkc
  end

  it "returns false for characters without the XO_NFKC property" do
    Char.new(0x00BF).should_not be_expands_on_nfkc
    Char.new(0x04CD).should_not be_expands_on_nfkc
    Char.new(0x100A).should_not be_expands_on_nfkc
  end
end
