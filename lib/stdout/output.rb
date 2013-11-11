#!/usr/bin/env ruby
# Name::      Stdout
# Author::    774 <http://id774.net>
# Created::   Nov 11, 2013
# Updated::   Nov 11, 2013
# Copyright:: 774 <http://id774.net> Copyright (c) 2013
# License::   Licensed under the GNU GENERAL PUBLIC LICENSE, Version 3.0.

module Stdout
  class Output
    attr_accessor :print, :dump

    def initialize
      @print = []
      @dump  = []
    end

    def write(msg); @print.push(msg); end

    class << self
      def capture(sep = $/)
        output = self.new
        $stdout = output
        yield
        $stdout = STDOUT
        output.print.join.each_line(sep = sep) {|line|
          output.dump.push(line)
        }
        return output.dump
      end
    end
  end
end
