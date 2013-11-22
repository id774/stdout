# -*- coding: utf-8 -*-

require File.dirname(__FILE__) + '/../../spec_helper'

describe Stdout::Output do

  describe '#capture' do

    context 'giving block of a put' do
      subject { Stdout::Output.capture { puts "hoge" } }

      let(:expected) { ["hoge\n"] }

      it 'should return array object' do
        expect(subject).to eql expected
      end
    end

    context 'giving block of puts' do
      subject {
        Stdout::Output.capture {
          puts "aaa"
          puts "bbb"
          puts "ccc"
        }
      }

      let(:expected) { [
          "aaa\n",
          "bbb\n",
          "ccc\n"
        ]
      }

      it "should return array object" do
        expect(subject).to eql expected
      end
    end

    context 'giving block of print method' do
      subject {
        Stdout::Output.capture {
          print_method
        }
      }

      def print_method
        result = 1 + 2
        puts "Answer is #{result}."
      end

      let(:expected) {
        [ "Answer is 3.\n" ]
      }

      it "should return array object" do
        expect(subject).to eql expected
      end
    end

    context 'giving block of prints method' do
      subject {
        Stdout::Output.capture {
          prints_method
        }
      }

      def prints_method
        puts "Job start"
        puts "Now processing..."
        puts "Done!"
      end

      let(:expected) {
        [
          "Job start\n",
          "Now processing...\n",
          "Done!\n"
        ]
      }

      it "should return array object" do
        expect(subject).to eql expected
      end
    end

    context 'giving block of puts' do
      subject {
        Stdout::Output.capture {
          puts "aaa"
          puts "bbb"
          puts "ccc"
        }
      }

      class OutputMock
        def write(msg); end
      end

      it "should save stdout status" do
        subject

        output = OutputMock.new
        expect($stdout).to equal STDOUT
        expect($stdout).not_to equal output

        $stdout = output

        subject

        expect($stdout).not_to equal STDOUT
        expect($stdout).to equal output
      end
    end

  end

  describe '#capture with separator "\r"' do

    context 'giving block of prints method' do
      subject {
        Stdout::Output.capture (sep = "\r") {
          prints_method_with_r
        }
      }

      def prints_method_with_r
        print "Job start\r"
        print "Now processing...\r"
        print "Done!\r"
      end

      let(:expected) {
        [
          "Job start\r",
          "Now processing...\r",
          "Done!\r"
        ]
      }

      it "should return array object" do
        expect(subject).to eql expected
      end
    end

  end

  context '#capture with separator "\n"' do

    context 'giving block of prints method' do
      subject {
        result = Stdout::Output.capture (sep = "\n") {
          prints_method_with_n
        }
      }

      def prints_method_with_n
        print "Job start\n"
        print "Now processing...\n"
        print "Done!\n"
      end

      let(:expected) {
        [
          "Job start\n",
          "Now processing...\n",
          "Done!\n"
        ]
      }

      it "should return array object" do
        expect(subject).to eql expected
      end
    end

  end

end
