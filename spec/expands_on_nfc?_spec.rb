describe Char, :expands_on_nfc? do
  it "returns true for characters with the XO_NFC property" do
    Char.new(0x0344).should be_expands_on_nfc
    Char.new(0x0FB9).should be_expands_on_nfc
    Char.new(0x2ADC).should be_expands_on_nfc
  end

  it "returns false for characters without the XO_NFC property" do
    Char.new(0x2476).should_not be_expands_on_nfc
    Char.new(0x04CD).should_not be_expands_on_nfc
    Char.new(0x2ADD).should_not be_expands_on_nfc
  end
end
