class Char < String

  def initialize(char)
    char = char.chr('utf-8') if char.is_a?(Fixnum)
    raise ArgumentError unless (char.is_a?(String) && char.size == 1)
    super char
  end

  def letter?
    property?(:L)
  end

  def uppercase?
    property?(:Lu)
  end

  def lowercase?
    property?(:Ll)
  end
  
  def titlecase?
    property?(:Lt)
  end

  def modifier?
    property?(:Lm)
  end

  def alphanumeric?
    posix_class?(:alnum)
  end

  def word?
    posix_class?(:word)
  end

  def ascii?
    posix_class?(:ascii)
  end

  def graph?
    posix_class?(:graph)
  end

  def number?
    property?(:N)
  end

  def mark?
    property?(:M)
  end

  def nonspacing?
    property?(:Mn)
  end

  def spacing_combining?
    property?(:Mc)
  end

  def enclosing?
    property?(:Me)
  end

  def digit?
    property?(:Nd)
  end

  def number_letter?
    property?(:Nl)
  end

  def hex?
    posix_class?(:xdigit)
  end

  def punctuation?
    property?(:P)
  end

  def connector?
    property?(:Pc)
  end

  def dash?
    property?(:Pd)
  end

  def open_punctuation?
    property?(:Ps)
  end

  def close_punctuation?
    property?(:Pe)
  end

  def initial_punctuation?
    property?(:Pi)
  end

  def final_punctuation?
    property?(:Pf)
  end

  def symbol?
    property?(:S)
  end

  def math?
    property?(:Sm)
  end

  def currency?
    property?(:Sc)
  end

  def modifier_symbol?
    property?(:Sk)
  end

  def separator?
    property?(:Z)
  end

  def space?
    property?(:Zs)
  end

  def blank?
    posix_class?(:blank)
  end

  def line_separator?
    property?(:Zl)
  end

  def paragraph_separator?
    property?(:Zl)
  end

  def other?
    property?(:C)
  end

  def control?
    property?(:Cc)
  end

  def format?
    property?(:Cf)
  end
  
  def surrogate?
    property?(:Cs)
  end

  def private?
    property?(:Co)
  end

  def unassigned?
    property?(:Cn)
  end

  def print?
    posix_class?(:print)
  end

  def to_r
    # FIXME: We special-case U+4E00 because it's mentioned in UnicodeData.txt 
    # yet not defined as Numeric there. We can remove this workaround when 
    # we parse Unihan.txt
    return Rational(1.0) if ord == 19968
    has_data? ? unicode_data.numeric_value : 0.to_r
  end

  def to_f
    to_r.to_f
  end

  def to_i
    to_r.to_i
  end

  def numeric?
    # FIXME: We special-case U+4E00 because it's mentioned in UnicodeData.txt 
    # yet not defined as Numeric there. We can remove this workaround when 
    # we parse Unihan.txt
    ord == 19968 || property?(:N)
  end

  def properties
    self.class.instance_methods(false).select{|m| m.to_s.end_with?('?')}.
                                       select{|m| send(m) rescue false }
  end

  # Returns true if we have data for this character, i.e. if it appears in
  # UnicodeData.txt. This currently returns false for Unihan characters.
  def exists?
    has_data?
  end

  def name
    has_data? ? unicode_data.name : ''
  end

  def name?(str)
    return false unless has_data?
    [str, name].map{|n| n.downcase.gsub(/[_ ]/,'')}.uniq.size == 1
  end

  def property?(cat)
    !!match(/^\p{#{cat.capitalize}}$/u)
  end

  def posix_class?(cls)
    !!match(/^[[:#{cls.downcase}:]]$/u)
  end

  private
  def has_data?
    !!unicode_data rescue false
  end

  def unicode_data
    require 'unicode-data'
    @data ||= UnicodeData.codepoint(ord)
  end
end
