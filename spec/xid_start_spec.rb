describe Char, :xid_start? do
  it "returns true for characters with the XID_Start property" do
    Char.new(0x0041).should be_xid_start
    Char.new(0x00D1).should be_xid_start
    Char.new(0x0A05).should be_xid_start
    Char.new(0x1F9D).should be_xid_start
    Char.new(0x2C00).should be_xid_start
  end

  it "returns false for characters without the XID_Start property" do
    Char.new(0x2CE5).should_not be_xid_start
    Char.new(0xE01C9).should_not be_xid_start
    Char.new(0x19FC).should_not be_xid_start
    Char.new(0x1FBD).should_not be_xid_start
  end
end
