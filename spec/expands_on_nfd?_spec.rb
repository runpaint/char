describe Char, :expands_on_nfd? do
  it "returns true for characters with the XO_NFD property" do
    Char.new(0xAC03).should be_expands_on_nfd
    Char.new(0x304C).should be_expands_on_nfd
    Char.new(0x2ADC).should be_expands_on_nfd
  end

  it "returns false for characters without the XO_NFD property" do
    Char.new(0xF900).should_not be_expands_on_nfd
    Char.new(0x0AA1).should_not be_expands_on_nfd
    Char.new(0x122D7).should_not be_expands_on_nfd
  end

  it "returns false for unassigned characters" do
    Char.new(0xD7A4).should_not be_expands_on_nfd
  end
end
