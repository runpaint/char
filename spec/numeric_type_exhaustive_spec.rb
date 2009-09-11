FILE = File.dirname(__FILE__) + '/../data/DerivedNumericType.txt'

derived_numeric_types = []

IO.foreach(FILE) do |line|
  next if line.start_with? '#'
  next if line.start_with? ' '
  line.gsub!(/#.+/,'')
  line.chomp!
  parts = line.split(/\s*;\s*/)
  next if parts.empty?
  codepoints = 
    if parts.first.include?('..')
      start, final = parts.first.split('..').map{ |p| p.to_i(16) }
      (start..final).to_a
     else
       [parts.first.to_i(16)]
     end
  codepoints.each do |codepoint|                 
    char = Char.new(codepoint) rescue nil
    next unless char && char.exists?
    # We only care about whether it's 'Numeric'; we ignore distinctions like
    # 'Digit' at this stage
    derived_numeric_types << char
  end
end

derived_numeric_types.uniq!

describe Char, :numeric? do
  derived_numeric_types.each do |char, data|
    it "returns true for #{char.chr}  (#{char.ord})" do
      char.should be_numeric
    end
  end

  it "understands numeric Han characters"
  it "returns false for non-numeric characters"
end
