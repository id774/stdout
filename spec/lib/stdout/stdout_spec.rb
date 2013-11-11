# -*- coding: utf-8 -*-

require File.dirname(__FILE__) + '/../../spec_helper'

describe Stdout::Output do

  context 'capture method with no arguments' do

    describe 'giving block of a put' do
      it "should return array object" do
        expected = ["hoge\n"]

        result = Stdout::Output.capture { puts "hoge" }
        result.should eq expected
      end
    end

    describe 'giving block of puts' do
      it "should return array object" do

        expected = [
          "aaa\n",
          "bbb\n",
          "ccc\n"
        ]

        result = Stdout::Output.capture {
          puts "aaa"
          puts "bbb"
          puts "ccc"
        }

        result.should eq expected
      end
    end

    describe 'giving block of print method' do
      it "should return array object" do

        def print_method
          result = 1 + 2
          puts "Answer is #{result}."
        end

        expected = [
          "Answer is 3.\n"
        ]

        result = Stdout::Output.capture {
          print_method
        }

        result.should eq expected
      end
    end

    describe 'giving block of prints method' do
      it "should return array object" do

        def prints_method
          puts "Job start"
          puts "Now processing..."
          puts "Done!"
        end

        expected = [
          "Job start\n",
          "Now processing...\n",
          "Done!\n"
        ]

        result = Stdout::Output.capture {
          prints_method
        }

        result.should eq expected
      end
    end

  end

  context 'capture method with separator "\r"' do

    describe 'giving block of prints method' do
      it "should return array object" do

        def prints_method_with_r
          print "Job start\r"
          print "Now processing...\r"
          print "Done!\r"
        end

        expected = [
          "Job start\r",
          "Now processing...\r",
          "Done!\r"
        ]

        result = Stdout::Output.capture (sep = "\r") {
          prints_method_with_r
        }

        result.should eq expected
      end
    end

  end

  context 'capture method with separator "\n"' do

    describe 'giving block of prints method' do
      it "should return array object" do

        def prints_method_with_n
          print "Job start\n"
          print "Now processing...\n"
          print "Done!\n"
        end

        expected = [
          "Job start\n",
          "Now processing...\n",
          "Done!\n"
        ]

        result = Stdout::Output.capture (sep = "\n") {
          prints_method_with_n
        }

        result.should eq expected
      end
    end

  end

end
