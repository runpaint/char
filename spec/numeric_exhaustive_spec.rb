FILE = File.dirname(__FILE__) + '/../data/DerivedNumericValues.txt'

derived_numeric_values = Hash.new([])

IO.foreach(FILE) do |line|
  next if line.start_with? '#'
  next if line.start_with? ' '
  line.gsub!(/#.+/,'')
  line.chomp!
  parts = line.split(/\s*;\s*/)
  next if parts.empty?
  
  char = Char.new(parts.first.to_i(16))
  derived_numeric_values[char] = parts[1..-1]
end

describe Char, :to_i do
  derived_numeric_values.each do |char, data|
    it "returns #{data[0]} for #{char.chr}  (#{char.ord})" do
      char.to_i.should == data[0].to_i
    end
  end
end

describe Char, :to_f do
  derived_numeric_values.each do |char, data|
    it "returns #{data[2].to_r.to_f} for #{char.chr}  (#{char.ord})" do
      char.to_f.should == data[2].to_r.to_f
    end
  end
end

describe Char, :to_r do
  derived_numeric_values.each do |char, data|
    it "returns #{data[2]} for #{char.chr}  (#{char.ord})" do
      char.to_r.should == data[2].to_r
    end
  end
end
