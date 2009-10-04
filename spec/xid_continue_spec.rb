describe Char, :xid_continue? do
  it "returns true for characters with the XID_Continue property" do
    Char.new(0x1fbe).should be_xid_continue
    Char.new(0x2c00).should be_xid_continue
    Char.new(0x25032).should be_xid_continue
    Char.new(0x69ae).should be_xid_continue
  end

  it "returns false for characters without the XID_Continue property" do
    Char.new(0xa490).should_not be_xid_continue
    Char.new(0x02c2).should_not be_xid_continue
    Char.new(0x166d).should_not be_xid_continue
    Char.new(0x06d4).should_not be_xid_continue
  end
end
