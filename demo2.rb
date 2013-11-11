#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

require 'lib/stdout/output'
require 'minitest/autorun'

class YourClass
  def self.some_method
    puts "aaa"
    puts "bbb"
    puts "ccc"
  end
end

class TestYourClass < MiniTest::Unit::TestCase
  def test_some_method
    expected = [
      "aaa\n",
      "bbb\n",
      "ccc\n"
    ]
    result = Stdout::Output.capture{ YourClass.some_method }
    assert_equal(expected, result)
  end
end
