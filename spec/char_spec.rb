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
