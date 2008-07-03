require File.dirname(__FILE__) + '/spec_helper'

require "Tame.bundle"
OSX::ns_import :Tame

describe OSX::Tame do
  
  it "should exist" do
    OSX::Tame
  end
  
  it "should add numbers" do
    tame = OSX::Tame.alloc.init
    tame.add_to(3, 4).should == 7
  end

  it "should add negative numbers" do
    tame = OSX::Tame.alloc.init
    tame.add_to(-10, -6).should == -16
  end
end