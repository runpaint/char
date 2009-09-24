class Char::Data
  class Boolean
    def self.codepoints(array)
      @@codepoints = array
    end

    def self.default(value)
      @@default = value
    end

    def self.[](codepoint)
      @@codepoints.any?{|rng| rng.include?(codepoint)} or @@default
    end
  end
end
