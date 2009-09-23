describe Char, :mirror do
  it "returns the corresponding character if self is mirrored" do
    Char.new(0x0028).mirror.should == Char.new(0x0029)
    Char.new(0x0029).mirror.should == Char.new(0x0028)
    Char.new(0x003C).mirror.should == Char.new(0x003E)
    Char.new(0x0F3A).mirror.should == Char.new(0x0F3B)
    Char.new(0x207D).mirror.should == Char.new(0x207E)
    Char.new(0x2208).mirror.should == Char.new(0x220B)
  end

  it "returns nil if self isn't mirrored" do
    Char.new(0x220E).mirror.should be_nil
    Char.new(0x2238).mirror.should be_nil
    Char.new(0x234D).mirror.should be_nil
    Char.new(0x0097).mirror.should be_nil
  end

  it "returns nil if self has the 'mirrored' property but doesn't have an appropriate mirror" do
    Char.new(0x2ADC).mirror.should be_nil
    Char.new(0x2A0A).mirror.should be_nil
    Char.new(0x2241).mirror.should be_nil
    Char.new(0x2201).mirror.should be_nil
  end
end
