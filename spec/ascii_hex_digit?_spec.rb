describe Char, :ascii_hex_digit? do
  it "returns true for ASCII decimal digits" do
    (0..9).each do |digit|
      Char.new(digit.to_s).should be_ascii_hex_digit
    end
  end

  it "returns true for a-f" do
    ('a'..'f').each do |letter|
      Char.new(letter.to_s).should be_ascii_hex_digit
    end
  end

  it "returns true for A-F" do
    ('A'..'F').each do |letter|
      Char.new(letter.to_s).should be_ascii_hex_digit
    end
  end

  it "returns false for every other character" do
    Char.new(0x0067).should_not be_ascii_hex_digit
    Char.new(0x2615).should_not be_ascii_hex_digit
    Char.new(0x2A5B2).should_not be_ascii_hex_digit
  end
end
