require 'uri'

module DataUri::Compiler

  def self.compile(input, type)
    "data:#{type},#{URI.encode(input)}"
  end

end
