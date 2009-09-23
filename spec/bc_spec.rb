describe Char, :bidi_class do
  it "returns :Arabic_Letter for a character in the AL class" do
    Char.new(0xFB50).bidi_class.should == :Arabic_Letter
    Char.new(0xFB5E).bidi_class.should == :Arabic_Letter
  end

  it "returns :Arabic_Number for a character in the AN class" do
    Char.new(0x0600).bidi_class.should == :Arabic_Number
    Char.new(0x0665).bidi_class.should == :Arabic_Number
  end

  it "returns :Paragraph_Separator for a character in the B class" do
    Char.new(0x2029).bidi_class.should == :Paragraph_Separator
    Char.new(0x000A).bidi_class.should == :Paragraph_Separator
  end

  it "returns :Boundary_Neutral for a character in the BN class" do
    Char.new(0x000E).bidi_class.should == :Boundary_Neutral
    Char.new(0x0082).bidi_class.should == :Boundary_Neutral
  end

  it "returns :Common_Separator for a character in the CS class" do
    Char.new(0x00A0).bidi_class.should == :Common_Separator
    Char.new(0x060C).bidi_class.should == :Common_Separator
  end

  it "returns :European_Number for a character in the EN class" do
    Char.new(0x06F0).bidi_class.should == :European_Number
    Char.new(0x2082).bidi_class.should == :European_Number
  end

  it "returns :European_Separator for a character in the ES class" do
    Char.new(0x208A).bidi_class.should == :European_Separator
    Char.new(0xFB29).bidi_class.should == :European_Separator
  end

  it "returns :European_Terminator for a character in the ET class" do
    Char.new(0xFE5F).bidi_class.should == :European_Terminator
    Char.new(0xFFE6).bidi_class.should == :European_Terminator
  end

  it "returns :Left_To_Right for a character in the L class" do
    Char.new(0x10000).bidi_class.should == :Left_To_Right
    Char.new(0x10087).bidi_class.should == :Left_To_Right
  end

  it "returns :Left_To_Right_Embedding for a character in the LRE class" do
    Char.new(0x202A).bidi_class.should == :Left_To_Right_Embedding
  end

  it "returns :Left_To_Right_Override for a character in the LRO class" do
    Char.new(0x202D).bidi_class.should == :Left_To_Right_Override
  end

  it "returns :Nonspacing_Mark for a character in the NSM class" do
    Char.new(0x20D0).bidi_class.should == :Nonspacing_Mark
    Char.new(0x20D3).bidi_class.should == :Nonspacing_Mark
  end

  it "returns :Other_Neutral for a character in the ON class" do
    Char.new(0x2100).bidi_class.should == :Other_Neutral
    Char.new(0x2116).bidi_class.should == :Other_Neutral
  end

  it "returns :Pop_Directional_Format for a character in the PDF class" do
    Char.new(0x202C).bidi_class.should == :Pop_Directional_Format
  end

  it "returns :Right_To_Left for a character in the R class" do
    Char.new(0xFB1D).bidi_class.should == :Right_To_Left
    Char.new(0xFB27).bidi_class.should == :Right_To_Left
  end

  it "returns :Right_To_Left_Embedding for a character in the RLE class" do
    Char.new(0x202B).bidi_class.should == :Right_To_Left_Embedding
  end

  it "returns :Right_To_Left_Override for a character in the RLO class" do
    Char.new(0x202E).bidi_class.should == :Right_To_Left_Override
  end

  it "returns :Segment_Separator for a character in the S class" do
    Char.new(0x0009).bidi_class.should == :Segment_Separator
    Char.new(0x001F).bidi_class.should == :Segment_Separator
  end

  it "returns :White_Space for a character in the WS class" do
    Char.new(0x0020).bidi_class.should == :White_Space
    Char.new(0x000C).bidi_class.should == :White_Space
  end

end
