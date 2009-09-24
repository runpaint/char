require_relative 'data'

class Char::ASCIIHexDigit < Char::Data::Boolean
  default false
  codepoints [48..57, 65..70, 97..102]
end
