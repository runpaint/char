class Char::WhiteSpace
  DEFAULT = false
  NON_DEFAULT = [9..13, 32..32, 133..133, 160..160, 5760..5760, 6158..6158, 8192..8202, 8232..8233, 8239..8239, 8287..8287, 12288..12288]
  def self.[](codepoint)
    NON_DEFAULT.any?{|rng| rng.include?(codepoint)} ? !DEFAULT : DEFAULT
  end
end
