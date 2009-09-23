require 'spec_helper'

describe Char, :decompose do
  it "returns the decomposition as an Array of Char objects" do
    Char.new(0x00B2).decompose.should == [Char.new(0x0032)]
    Char.new(0x00C8).decompose.should == [Char.new(0x0045), Char.new(0x0300)]
    Char.new(0x00E3).decompose.should == [Char.new(0x0061), Char.new(0x0303)]
    Char.new(0x1D789).decompose.should == [Char.new(0x2202)]
    Char.new(0x2126).decompose.should == [Char.new(0x03A9)]
    Char.new(188).decompose.should == [Char.new(49), Char.new(8260), Char.new(52)]
  end

  it "returns [self] for characters that decompose to themselves" do
    Char.new(0x24DC7).decompose.should == [Char.new(0x24DC7)]
    Char.new(0x0316).decompose.should == [Char.new(0x0316)]
  end

  it "returns [self] for unassigned characters" do
    Char.new(0x0378).decompose.should == [Char.new(0x0378)]
  end
end
