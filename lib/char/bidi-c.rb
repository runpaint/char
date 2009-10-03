require_relative 'data'

class Char::BidiControl < Char::Data::Boolean
  default false
  codepoints [8206..8207, 8234..8238]
end
