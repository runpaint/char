describe Char, :to_r do
  it "understands the ASCII decimal digits" do
    Char.new(0x0030).to_r.should == Rational(0)
    Char.new(0x0031).to_r.should == Rational(1)
    Char.new(0x0032).to_r.should == Rational(2)
    Char.new(0x0033).to_r.should == Rational(3)
    Char.new(0x0034).to_r.should == Rational(4)
    Char.new(0x0035).to_r.should == Rational(5)
    Char.new(0x0036).to_r.should == Rational(6)
    Char.new(0x0037).to_r.should == Rational(7)
    Char.new(0x0038).to_r.should == Rational(8)
    Char.new(0x0039).to_r.should == Rational(9)
  end

  it "returns the Float corresponding to a Nd character" do
    Char.new(0x1BB9).to_r.should == Rational(9)
    Char.new(0x1C45).to_r.should == Rational(5)
    Char.new(0x1C53).to_r.should == Rational(3)
  end

  it "returns the Float corresponding to a No character" do
    Char.new(0x2075).to_r.should == Rational(5) 
    Char.new(0x2089).to_r.should == Rational(9)
    Char.new(0x2473).to_r.should == Rational(20)
  end

  it "returns the Float corresponding to a Nl character" do
    Char.new(0x16EE).to_r.should == Rational(17) 
    Char.new(0x2164).to_r.should == Rational(5)
    Char.new(0x216C).to_r.should == Rational(50)
  end

  it "understands characters outside of the N category but with numeric values" do
    Char.new(0xF9FD).to_r.should == Rational(10)
    Char.new(0x2F890).to_r.should == Rational(9)
  end

  it "converts fractions to Floats" do
    Char.new(0x2154).to_r.should == Rational(2, 3)
    Char.new(0x00BD).to_r.should == Rational(1, 2)
    Char.new(0x0F32).to_r.should == Rational(17, 2)
  end

  it "converts negative fractions to Floats" do
    Char.new(0x0F33).to_r.should == Rational(-1, 2)
  end

  it "understands multi-digit integers" do
    Char.new(0x1376).to_r.should == Rational(50)
    Char.new(0x137B).to_r.should == Rational(100)
    Char.new(0x246C).to_r.should == Rational(13)
    Char.new(0x10156).to_r.should == Rational(50000)
  end

  it "understands parenthesized integers" do
    Char.new(0x2485).to_r.should == Rational(18)
    Char.new(0x247C).to_r.should == Rational(9)
  end

  it "understands circled integers" do
    Char.new(0x24F3).to_r.should == Rational(19)
    Char.new(0x24FB).to_r.should == Rational(7)
    Char.new(0x278F).to_r.should == Rational(6)
  end

  it "understands Roman numerals" do
    Char.new(0x2167).to_r.should == Rational(8)
    Char.new(0x216D).to_r.should == Rational(100)
    Char.new(0x2188).to_r.should == Rational(100000)
  end

  it "returns 0 for non-numeric characters" do
    Char.new(0x234D).to_r.should == 0
    Char.new(0x2660).to_r.should == 0
    Char.new(0x0004).to_r.should == 0
    Char.new(0x10FFFD).to_r.should == 0
  end
end
