#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

require 'lib/stdout/output'

demo = Stdout::Output.capture { puts "hoge" }

p demo

demo2 = Stdout::Output.capture {
  puts "Hello, "
  puts "World!"
}

p demo2

