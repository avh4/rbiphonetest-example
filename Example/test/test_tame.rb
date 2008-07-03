require File.dirname(__FILE__) + '/test_helper'

require "Tame.bundle"
OSX::ns_import :Tame

class TestTame < Test::Unit::TestCase
  def test_tame_class_exists
    OSX::Tame
  end
end