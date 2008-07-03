require File.dirname(__FILE__) + '/test_helper'

require "Tame.bundle"
OSX::ns_import :Tame

class TestTame < Test::Unit::TestCase
  def test_tame_class_exists
    OSX::Tame
  end
  
  def test_tame_should_add_numbers
    tame = OSX::Tame.alloc.init;
    assert_equal(7, tame.add_to(3,4));
  end
  
  def test_tame_should_add_negative_numbers
    tame = OSX::Tame.alloc.init
    assert_equal(-16, tame.add_to(-10, -6))
  end
end