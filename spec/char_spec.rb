# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Char, :initialize do
  it "accepts a String argument" do
    Char.new("\t").to_s.should == "\t"
  end

  it "accepts a Fixnum argument which it treats as a Unicode codepoint" do
    Char.new(5678).to_s.should == "ᘮ"
  end
end

describe Char, :property? do
  it "returns true if the character is a member of the given 'General category'" do
    Char.new("c").property?(:Ll).should be_true
    Char.new(4242).property?(:Nd).should be_true
  end

  it "returns false if the character is not a member of the given 'General category'" do
    Char.new("c").property?(:Lu).should be_false
    Char.new(4242).property?(:So).should be_false
  end
end

describe Char, :posix_class? do
  it "returns true if the character is a member of the given POSIX bracket class" do
    Char.new(1234).posix_class?(:upper).should be_true
    Char.new(0x030E).posix_class?(:graph).should be_true
  end

  it "returns false if the character is not a member of the given POSIX bracket class" do
    Char.new(1234).posix_class?(:lower).should be_false
    Char.new(0x030E).posix_class?(:ascii).should be_false
  end
end

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
