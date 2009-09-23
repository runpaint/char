describe Char, :mirrored? do
  it "returns true when the character has the 'bidi mirrored' property" do
    Char.new(0x0F3A).should be_mirrored
    Char.new(0x0028).should be_mirrored
    Char.new(0x3010).should be_mirrored
    Char.new(0x1D7C3).should be_mirrored
    Char.new(0x2A0B).should be_mirrored
  end

  it "returns false when the character doesn't have the 'bidi mirrored' property" do
    Char.new(0x103E).should_not be_mirrored
    Char.new(0x1068).should_not be_mirrored
    Char.new(0x10A0).should_not be_mirrored
    Char.new(0x4E00).should_not be_mirrored
    Char.new(0x1F000).should_not be_mirrored
  end
end
