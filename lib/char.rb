class Char < String

  def initialize(char)
    char = char.chr('utf-8') if char.is_a?(Fixnum)
    raise ArgumentError, char unless (char.is_a?(String) && char.size == 1)
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

  def numeric_value
    require_relative 'char/nv'
    nv = NumericValue[ord]
    nv.nil? ? 0/0.0 : nv
  end

  def to_r
    begin
      numeric_value.to_r
    rescue FloatDomainError
      0.to_r
    end
  end

  def to_f
    numeric_value.to_f.nan? ? 0.0 : numeric_value.to_f
  end

  def to_i
    begin
      numeric_value.to_i
    rescue FloatDomainError
      0
    end
  end

  # Returns true if self is a numeric character.
  #
  # Note: We use the Unicode definition of 'numeric', which is not necessarily
  # intuitive. Specifically, 'digits' and 'decimal digits' are _not_ classed
  # as numeric.
  def numeric?
    numeric_type == :numeric
  end

  # Returns true if self is a digit character.
  #
  # Note: We use the Unicode definition of 'digit', which is not necessarily
  # intuitive. Specifically, 'numerics' and 'decimal digits' are _not_ classed
  # as digits.
  def digit?
    numeric_type == :digit
  end

  # Returns true if self is a decimal digit character.
  #
  # Note: We use the Unicode definition of 'decimal digit', which is not
  # necessarily intuitive. Specifically, 'numerics' and 'digits' are _not_
  # classed as decimal digits.
  def decimal?
    numeric_type == :decimal
  end

  def numeric_type
    require_relative 'char/nt'
    case nt = NumericType[ord]
      when 'None' then :none
      when 'De'   then :decimal
      when 'Di'   then :digit
      when 'Nu'   then :numeric
      else        raise "Unknown numeric type: #{nt.inspect}"
    end
  end

  def age
    require_relative 'char/age'
    Age[ord]
  end

  def ccc
    require_relative 'char/ccc'
    case CanonicalCombiningClass[ord]
      when 0   then :Not_Reordered
      when 1   then :Overlay
      when 7   then :Nukta
      when 8   then :Kana_Voicing
      when 9   then :Virama
      when 200 then :Attached_Below_Left
      when 202 then :Attached_Below
      when 216 then :Attached_Above_Right
      when 218 then :Below_Left
      when 220 then :Below
      when 222 then :Below_Right
      when 224 then :Left
      when 226 then :Right
      when 228 then :Above_Left
      when 230 then :Above
      when 232 then :Above_Right
      when 233 then :Double_Below
      when 234 then :Double_Above
      when 240 then :Iota_Subscript
      else     raise "Invalid canonical combining class"
    end
  end
  alias :canonical_combining_class :ccc

  def bidi_class
    require_relative 'char/bc'
    case BidirectionalCategory[ord]
      when 'AL'  then :Arabic_Letter
      when 'AN'  then :Arabic_Number
      when 'B'   then :Paragraph_Separator
      when 'BN'  then :Boundary_Neutral
      when 'CS'  then :Common_Separator
      when 'EN'  then :European_Number
      when 'ES'  then :European_Separator
      when 'ET'  then :European_Terminator
      when 'L'   then :Left_To_Right
      when 'LRE' then :Left_To_Right_Embedding
      when 'LRO' then :Left_To_Right_Override
      when 'NSM' then :Nonspacing_Mark
      when 'ON'  then :Other_Neutral
      when 'PDF' then :Pop_Directional_Format
      when 'R'   then :Right_To_Left
      when 'RLE' then :Right_To_Left_Embedding
      when 'RLO' then :Right_To_Left_Override
      when 'S'   then :Segment_Separator
      when 'WS'  then :White_Space
      else       raise "Unknown bidi class"
    end
  end
  alias :bidi_category :bidi_class

  def mirrored?
    require_relative 'char/bidi-m'
    BidiMirrored[ord]
  end

  def mirror
    require_relative 'char/bmg'
    (cp = BidiMirroringGlyph[ord]).nil? ? nil : self.class.new(cp)
  end

  def decompose
    require_relative 'char/dm'
    codepoints = DecompositionMapping[ord]
    codepoints.nil? ? [self] : codepoints.map{|cp| self.class.new(cp)}
  end

  def bidi_control?
    require_relative 'char/bidi-c'
    BidiControl[ord]
  end

  def whitespace?
    require_relative 'char/wspace'
    WhiteSpace[ord]
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
    require_relative 'char/name'
    Name[ord] or ''
  end

  def name?(str)
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
