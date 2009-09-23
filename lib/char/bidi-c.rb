class Char::BidiControl
  DEFAULT = false
  @@bidic = {true=>[8206..8207, 8234..8238]}
  def self.[](codepoint)
    @@bidic.each_pair do |bool,ranges|
      return bool if ranges.any?{|rng| rng.include?(codepoint)}
    end
    DEFAULT
  end
end
