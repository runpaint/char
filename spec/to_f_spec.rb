describe Char, :to_f do
  it "understands the ASCII decimal digits" do
    Char.new(0x0030).to_f.should == 0.0
    Char.new(0x0031).to_f.should == 1.0
    Char.new(0x0032).to_f.should == 2.0
    Char.new(0x0033).to_f.should == 3.0
    Char.new(0x0034).to_f.should == 4.0
    Char.new(0x0035).to_f.should == 5.0
    Char.new(0x0036).to_f.should == 6.0
    Char.new(0x0037).to_f.should == 7.0
    Char.new(0x0038).to_f.should == 8.0
    Char.new(0x0039).to_f.should == 9.0
  end

  it "returns the Float corresponding to a Nd character" do
    Char.new(0x1BB9).to_f.should == 9.0
    Char.new(0x1C45).to_f.should == 5.0
    Char.new(0x1C53).to_f.should == 3.0
  end

  it "returns the Float corresponding to a No character" do
    Char.new(0x2075).to_f.should == 5.0 
    Char.new(0x2089).to_f.should == 9.0
    Char.new(0x2473).to_f.should == 20.0
  end

  it "returns the Float corresponding to a Nl character" do
    Char.new(0x16EE).to_f.should == 17.0 
    Char.new(0x2164).to_f.should == 5.0
    Char.new(0x216C).to_f.should == 50.0
  end

  it "understands characters outside of the N category but with numeric values" do
    Char.new(0xF9FD).to_f.should == 10.0
    Char.new(0x2F890).to_f.should == 9.0
  end

  it "converts fractions to Floats" do
    Char.new(0x2154).to_f.should == 2.0/3.0
    Char.new(0x00BD).to_f.should == 0.5
    Char.new(0x0F32).to_f.should == 8.5
  end

  it "converts negative fractions to Floats" do
    Char.new(0x0F33).to_f.should == -0.5
  end

  it "understands multi-digit integers" do
    Char.new(0x1376).to_f.should == 50.0
    Char.new(0x137B).to_f.should == 100.0
    Char.new(0x246C).to_f.should == 13.0
    Char.new(0x10156).to_f.should == 50000.0
  end

  it "understands parenthesized integers" do
    Char.new(0x2485).to_f.should == 18.0
    Char.new(0x247C).to_f.should == 9.0
  end

  it "understands circled integers" do
    Char.new(0x24F3).to_f.should == 19.0
    Char.new(0x24FB).to_f.should == 7.0
    Char.new(0x278F).to_f.should == 6.0
  end

  it "understands Roman numerals" do
    Char.new(0x2167).to_f.should == 8.0
    Char.new(0x216D).to_f.should == 100.0
    Char.new(0x2188).to_f.should == 100000.0
  end

  it "returns 0.0 for non-numeric characters" do
    Char.new(0x234D).to_f.should == 0.0
    Char.new(0x2660).to_f.should == 0.0
    Char.new(0x0004).to_f.should == 0.0
    Char.new(0x10FFFD).to_f.should == 0.0
  end
end
