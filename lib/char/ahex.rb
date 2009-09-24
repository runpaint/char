class Char::ASCIIHexDigit
  DEFAULT = false
  NON_DEFAULT = [48..57, 65..70, 97..102]
  def self.[](codepoint)
    NON_DEFAULT.any?{|rng| rng.include?(codepoint)} ? !DEFAULT : DEFAULT
  end
end
