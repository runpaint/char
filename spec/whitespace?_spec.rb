describe Char, :whitespace? do
  it "returns true for whitespace characters outside of the Zs catageory" do
    Char.new(0x0009).should be_whitespace
    Char.new(0x000B).should be_whitespace
    Char.new(0x2029).should be_whitespace
  end

  it "returns true for 'SPACE'" do
    Char.new(0x0020).should be_whitespace
  end

  it "returns true for 'NO-BREAK SPACE'" do
    Char.new(0x00A0).should be_whitespace
  end

  it "returns true for 'EN SPACE'" do
    Char.new(0x2002).should be_whitespace
  end

  it "returns true for 'EM SPACE'" do
    Char.new(0x2003).should be_whitespace
  end

  it "returns false for non whitespace characters" do
    Char.new(0x0150).should_not be_whitespace
    Char.new(0x5EB3).should_not be_whitespace
    Char.new(0x013F).should_not be_whitespace
    Char.new(0x23A5).should_not be_whitespace
  end
end
