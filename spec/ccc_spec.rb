describe Char, :ccc do
  it "returns :Not_Reordered for characters with a CCC of 0" do
    Char.new(0x034F).ccc.should == :Not_Reordered
    Char.new(0x00001).ccc.should == :Not_Reordered
  end

  it "returns :Overlay for characters with a CCC of 1" do
    Char.new(0x0334).ccc.should == :Overlay
    Char.new(0x20D2).ccc.should == :Overlay
  end

  it "returns :Nukta for characters with a CCC of 7" do
    Char.new(0x093C).ccc.should == :Nukta
    Char.new(0x09BC).ccc.should == :Nukta
  end

  it "returns :Kana_Voicing for characters with a CCC of 8" do
    Char.new(0x3099).ccc.should == :Kana_Voicing
    Char.new(0x309A).ccc.should == :Kana_Voicing
  end

  it "returns :Virama for characters with a CCC of 9" do
    Char.new(0xA806).ccc.should == :Virama
    Char.new(0xA8C4).ccc.should == :Virama
  end

  it "returns :Attached_Below for characters with a CCC of 202" do
    Char.new(0x0321).ccc.should == :Attached_Below
    Char.new(0x0327).ccc.should == :Attached_Below
  end

  it "returns :Attached_Above_Right for characters with a CCC of 216" do
    Char.new(0x0F39).ccc.should == :Attached_Above_Right
    Char.new(0x1D165).ccc.should == :Attached_Above_Right
  end

  it "returns :Below_Left for characters with a CCC of 218" do
    Char.new(0x302A).ccc.should == :Below_Left
  end

  it "returns :Below for characters with a CCC of 220" do
    Char.new(0xA92B).ccc.should == :Below
    Char.new(0xA92D).ccc.should == :Below
  end

  it "returns :Below_Right for characters with a CCC of 222" do
    Char.new(0x059A).ccc.should == :Below_Right
    Char.new(0x1939).ccc.should == :Below_Right
  end

  it "returns :Left for characters with a CCC of 224" do
    Char.new(0x302E).ccc.should == :Left
    Char.new(0x302F).ccc.should == :Left
  end

  it "returns :Right for characters with a CCC of 226" do
    Char.new(0x1D16D).ccc.should == :Right
  end

  it "returns :Above_Left for characters with a CCC of 228" do
    Char.new(0x05AE).ccc.should == :Above_Left
    Char.new(0x18A9).ccc.should == :Above_Left
  end

  it "returns :Above for characters with a CCC of 230" do
    Char.new(0x0300).ccc.should == :Above
    Char.new(0x0309).ccc.should == :Above
  end

  it "returns :Above_Right for characters with a CCC of 232" do
    Char.new(0x302C).ccc.should == :Above_Right
    Char.new(0x0315).ccc.should == :Above_Right
  end

  it "returns :Double_Below for characters with a CCC of 233" do
    Char.new(0x035C).ccc.should == :Double_Below
    Char.new(0x035F).ccc.should == :Double_Below
  end

  it "returns :Double_Above for characters with a CCC of 234" do
    Char.new(0x0360).ccc.should == :Double_Above
    Char.new(0x1DCD).ccc.should == :Double_Above
  end

  it "returns :Iota_Subscript for characters with a CCC of 240" do
    Char.new(0x0345).ccc.should == :Iota_Subscript
  end
end
