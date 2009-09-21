FILE = File.dirname(__FILE__) + '/../data/DerivedNumericType.txt'

derived_numeric_types = {}

IO.foreach(FILE) do |line|
  next if line.start_with? '#'
  next if line.start_with? ' '
  line.gsub!(/#.+/,'')
  line.chomp!
  parts = line.split(/\s*;\s*/).map{|f| f.strip}
  next if parts.empty?
  codepoints = 
    if parts.first.include?('..')
      start, final = parts.first.split('..').map{ |p| p.to_i(16) }
      (start..final).to_a
     else
       [parts.first.to_i(16)]
     end
  codepoints.each do |codepoint|                 
    char = Char.new(codepoint)
    (derived_numeric_types[parts[1]] ||= []) << char
  end
end

describe Char, :numeric? do
  derived_numeric_types['Numeric'].each do |char|
    it "returns true for numeric character #{char.chr}  (#{char.ord})" do
      char.should be_numeric
    end
  end

  derived_numeric_types['Digit'].each do |char|
    it "returns false for digit character #{char.chr}  (#{char.ord})" do
      char.should_not be_numeric
    end
  end

  derived_numeric_types['Decimal'].each do |char|
    it "returns false for decimal character #{char.chr}  (#{char.ord})" do
      char.should_not be_numeric
    end
  end

  it "returns false for non-numeric characters" do
    [0x0A2C, 0x0B1F, 0x0EDC, 0x1063, 
     0x14D2, 0x1E00, 0x2425, 0x2565].each do |cp|
      Char.new(cp).should_not be_numeric
     end
  end
end

