describe Char, :alphabetic? do
  it "returns true for characters with the 'alphabetic' property" do
    Char.new(0x4F3D).should be_alphabetic
    Char.new(0xB90E).should be_alphabetic
    Char.new(0x0A01).should be_alphabetic
    Char.new(0x0041).should be_alphabetic
    # The following characters are given as examples for this property in the
    # standard
    Char.new(0x00AA).should be_alphabetic
    Char.new(0x00BA).should be_alphabetic
  end

  it "returns false for characters without the 'alphabetic' property" do
    Char.new(0x005B).should_not be_alphabetic
    Char.new(0x00BF).should_not be_alphabetic
    Char.new(0x1FBD).should_not be_alphabetic
    Char.new(0x103D0).should_not be_alphabetic
  end
end
