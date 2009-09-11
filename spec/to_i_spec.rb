describe "Char#to_i" do
  it "understands the ASCII decimal digits" do
    Char.new(0x0030).to_i.should == 0
    Char.new(0x0031).to_i.should == 1
    Char.new(0x0032).to_i.should == 2
    Char.new(0x0033).to_i.should == 3
    Char.new(0x0034).to_i.should == 4
    Char.new(0x0035).to_i.should == 5
    Char.new(0x0036).to_i.should == 6
    Char.new(0x0037).to_i.should == 7
    Char.new(0x0038).to_i.should == 8
    Char.new(0x0039).to_i.should == 9
  end

  it "returns the Integer corresponding to a Nd character" do
    Char.new(0x1BB9).to_i.should == 9
    Char.new(0x1C45).to_i.should == 5
    Char.new(0x1C53).to_i.should == 3
  end

  it "returns the Integer corresponding to a No character" do
    Char.new(0x2075).to_i.should == 5 
    Char.new(0x2089).to_i.should == 9
    Char.new(0x2473).to_i.should == 20
  end

  it "returns the Integer corresponding to a Nl character" do
    Char.new(0x16EE).to_i.should == 17 
    Char.new(0x2164).to_i.should == 5
    Char.new(0x216C).to_i.should == 50
  end

  it "converts fractions to integers" do
    Char.new(0x2154).to_i.should == 0
    Char.new(0x00BD).to_i.should == 0
    Char.new(0x0F32).to_i.should == 8
  end

  it "understands multi-digit integers" do
    Char.new(0x1376).to_i.should == 50
    Char.new(0x137B).to_i.should == 100
    Char.new(0x246C).to_i.should == 13
    Char.new(0x10156).to_i.should == 50000
  end

  it "understands parenthesized integers" do
    Char.new(0x2485).to_i.should == 18
    Char.new(0x247C).to_i.should == 9
  end

  it "understands circled integers" do
    Char.new(0x24F3).to_i.should == 19
    Char.new(0x24FB).to_i.should == 7
    Char.new(0x278F).to_i.should == 6
  end

  it "understands Roman numerals" do
    Char.new(0x2167).to_i.should == 8
    Char.new(0x216D).to_i.should == 100
    Char.new(0x2188).to_i.should == 100000
  end

  it "understands characters outside of the N category but with numeric values" do
    Char.new(0xF9FD).to_i.should == 10
    Char.new(0x2F890).to_i.should == 9
  end

  it "returns 0 for non-numeric characters" do
    Char.new(0x234D).to_i.should == 0
    Char.new(0x2660).to_i.should == 0
    Char.new(0x0004).to_i.should == 0
    Char.new(0x10FFFD).to_i.should == 0
  end
end
