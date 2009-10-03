describe Char, :digraph do
  it "returns the RFC 1345 two-character digraph" do
    Char.new(0x2014).digraph.should == '-M'
    Char.new(0x2161).digraph.should == '2R'
    Char.new(0x01e7).digraph.should == 'g<'
    Char.new(0x060c).digraph.should == ',+'
  end
  
  it "returns the RFC 1345 three-character digraph"
  
  it "returns the Vim two-character digraph" do
    Char.new(175).digraph.should == '-='
    Char.new(255).digraph.should == 'y"'
  end

  it "returns nil for characters without digraphs" do
    Char.new(0xabcd).digraph.should be_nil
  end
end
