describe Char, :bidi_control? do
  it "returns true for characters with the Bidi_Control property" do
    Char.new(0x200E).should be_bidi_control
    Char.new(0x200F).should be_bidi_control
    Char.new(0x202A).should be_bidi_control
  end

  it "returns false for characters without the Bidi_Control property" do
    Char.new(0x13D7).should_not be_bidi_control
    Char.new(0x1F93).should_not be_bidi_control
    Char.new(0x0399).should_not be_bidi_control
  end
end
