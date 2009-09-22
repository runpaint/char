
age = {}

IO.foreach(File.dirname(__FILE__) + '/../data/DerivedAge.txt') do |line|
  next if line.start_with? '#'
  next if line.start_with? ' '
  line.gsub!(/#.+/,'')
  line.chomp!
  parts = line.split(/\s*;\s*/).map{|p| p.strip}
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
    next unless char
    (age[parts[1].to_f] ||= []) << char
  end
end

describe Char, :age do
  age.each_pair do |ver, chars|
    chars.sample(2).each do |char|
      it "returns #{ver} for #{char.chr}  (#{char.ord})" do
        char.age.should == ver
      end
    end
  end

  it "works with private-use characters"
end
