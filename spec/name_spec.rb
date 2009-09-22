describe Char, :name? do
  it "returns true if the character has the given name" do
    Char.new(0x1508).name?('CANADIAN SYLLABICS BLACKFOOT S').should be_true
    Char.new(0x20DB).name?('COMBINING THREE DOTS ABOVE').should be_true
  end

  it "returns true if the character has the given name normalised for case" do
    Char.new(0x07F8).name?('NKO comma').should be_true
    Char.new(0x0491).name?('CYRILLIC SMALL LETTER GHE WITH UPTURN').should be_true
  end

  it "returns true if the character has the given name normalised for space" do
    Char.new(0x0251).name?('LATINSMALL LETTER ALPHA').should be_true
    Char.new(0x0223).name?('LATIN SMALL LETTER  OU').should be_true
  end

  it "returns true if the character has the given name normalised for space and case" do
    Char.new(0x0251).name?('LATINSMALL LETTer ALPHA').should be_true
    Char.new(0x0223).name?(' LaTIN SMALL LETtER  OU').should be_true
  end

  it "returns false if the character doesn't have the given name" do
    Char.new(0x00A4).name?('URRENCY SIGN').should be_false
    Char.new(0x2a3c).name?('INTERIOR').should be_false
  end
end

describe Char, :name do
  it "returns the character's name as a String" do
    Char.new(0x1508).name.should == 'CANADIAN SYLLABICS BLACKFOOT S'
    Char.new(0x20DB).name.should == 'COMBINING THREE DOTS ABOVE'
    Char.new(0x07F8).name.should == 'NKO COMMA'
    Char.new(0x0491).name.should == 'CYRILLIC SMALL LETTER GHE WITH UPTURN'
  end

  it "returns the empty string for characters without names" do
    Char.new(0x31b8).name.should == ''
  end
end
