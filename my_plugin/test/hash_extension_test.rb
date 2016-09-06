require 'test_helper'

class HashExtensionTest < ActiveSupport::TestCase
  def setup
  	@h = Hash.new
  end

  def test_missing_value
  	assert_nil @h.baz!
  end

  def test_assignment
  	@h.foo = 'bar'
  	assert_equal @h.foo, 'bar'
  end
end