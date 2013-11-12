# -*- coding: utf-8 -*-

require File.dirname(__FILE__) + '/../spec_helper'

describe Stdout do
  context 'const get :VERSION should' do
    it "return right version number" do
      expect = '0.0.2'
      Stdout.const_get(:VERSION).should be_true
      Stdout.const_get(:VERSION).should eq expect
    end
  end
end
