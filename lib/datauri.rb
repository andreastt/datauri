#
# datauri - Compiles "data" URL scheme addresses from file or input
#
# Copyright (C) 2011 Andreas Tolf Tolfsen <ato@fsfe.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

require 'tempfile'
require 'datauri/version'
require 'datauri/compiler'

module DataUri

  attr_accessor :output

  class << self

    def run!(args)
      p args
      abort
    end

    #
    # The DataUri class lets you compile strings or the contents or
    # files into "data" URL scheme addresses.
    #
    # @param  input [String,File] a string or file object you wish to
    #                             encode
    # @return       [String]      Encoded data URI scheme address
    #

    def encode(input, type='text/html;charset=utf-8')
      case input
      when String
        abort 'datauri: Missing input' if input.empty?
        Compiler.compile(input, type)
      when File
        abort "datauri: #{input}: No such file or directory"
        Compiler.compile(input.read, type)
      else
        abort 'datauri: Unknown input'
      end
    end

  end

end
