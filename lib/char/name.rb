class Char::Name
  def self.[](codepoint)
    @@names[codepoint]
  end
end