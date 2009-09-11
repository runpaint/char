describe Char, :numeric? do
  it "returns true if self is a character in the Nd category" do
    Char.new(0x1D7CE).numeric?.should be_true
    Char.new(0x1D7DA).numeric?.should be_true
  end

  it "returns true if self is a character in the Nl category" do
    Char.new(0x16EE).numeric?.should be_true
    Char.new(0x2160).numeric?.should be_true
  end

  it "returns true if self is a character in the No category" do
    Char.new(0x2466).numeric?.should be_true
    Char.new(0x2480).numeric?.should be_true
  end

  it "returns false if self is a character in the Lu category" do
    Char.new(0x004E).numeric?.should be_false
    Char.new(0x00C1).numeric?.should be_false
  end

  it "returns false if self is a character in the Ll category" do
    Char.new(0x00B5).numeric?.should be_false
    Char.new(0x0442).numeric?.should be_false
  end

  it "returns false if self is a character in the Lt category" do
    Char.new(0x1F88).numeric?.should be_false
    Char.new(0x01C5).numeric?.should be_false
  end

  it "returns false if self is a character in the Lm category" do
    Char.new(0x02B0).numeric?.should be_false
    Char.new(0x0640).numeric?.should be_false
  end

  it "returns false if self is a character in the Lo category" do
    Char.new(0x0677).numeric?.should be_false
    Char.new(0x2FA0A).numeric?.should be_false
  end

  it "returns false if self is a character in the Mn category" do
    Char.new(0x0300).numeric?.should be_false
    Char.new(0x0711).numeric?.should be_false
  end

  it "returns false if self is a character in the Mc category" do
    Char.new(0x0903).numeric?.should be_false
    Char.new(0x0F3E).numeric?.should be_false
  end

  it "returns false if self is a character in the Me category" do
    Char.new(0x20DD).numeric?.should be_false
    Char.new(0xA670).numeric?.should be_false
  end

  it "returns false if self is a character in the Pc category" do
    Char.new(0xFE33).numeric?.should be_false
    Char.new(0x005F).numeric?.should be_false
  end

  it "returns false if self is a character in the Pd category" do
    Char.new(0x058A).numeric?.should be_false
    Char.new(0x05BE).numeric?.should be_false
  end

  it "returns false if self is a character in the Ps category" do
    Char.new(0x0F3A).numeric?.should be_false
    Char.new(0x169B).numeric?.should be_false
  end

  it "returns false if self is a character in the Pe category" do
    Char.new(0x169C).numeric?.should be_false
    Char.new(0x2046).numeric?.should be_false
  end

  it "returns false if self is a character in the Pi category" do
    Char.new(0x2E02).numeric?.should be_false
    Char.new(0x00AB).numeric?.should be_false
  end

  it "returns false if self is a character in the Pf category" do
    Char.new(0x2019).numeric?.should be_false
    Char.new(0x00BB).numeric?.should be_false
  end

  it "returns false if self is a character in the Po category" do
    Char.new(0x00BF).numeric?.should be_false
    Char.new(0x0021).numeric?.should be_false
  end

  it "returns false if self is a character in the Sm category" do
    Char.new(0x2044).numeric?.should be_false
    Char.new(0x002B).numeric?.should be_false
  end

  it "returns false if self is a character in the Sc category" do
    Char.new(0x00A2).numeric?.should be_false
    Char.new(0x0024).numeric?.should be_false
  end

  it "returns false if self is a character in the Sk category" do
    Char.new(0x005E).numeric?.should be_false
    Char.new(0xA700).numeric?.should be_false
  end

  it "returns false if self is a character in the So category" do
    Char.new(0xA828).numeric?.should be_false
    Char.new(0x00A6).numeric?.should be_false
  end

  it "returns false if self is a character in the Zs category" do
    Char.new(0x1680).numeric?.should be_false
    Char.new(0x0020).numeric?.should be_false
  end

  it "returns false if self is a character in the Zl category" do
    Char.new(0x2028).numeric?.should be_false
  end

  it "returns false if self is a character in the Zp category" do
    Char.new(0x2029).numeric?.should be_false
  end

  it "returns false if self is a character in the Cc category" do
    Char.new(0x0000).numeric?.should be_false
    Char.new(0x009F).numeric?.should be_false
  end

  it "returns false if self is a character in the Cf category" do
    Char.new(0x00AD).numeric?.should be_false
    Char.new(0x06DD).numeric?.should be_false
  end

  it "returns false if self is a character in the Co category" do
    Char.new(0xE000).numeric?.should be_false
    Char.new(0xF0000).numeric?.should be_false
  end
end
