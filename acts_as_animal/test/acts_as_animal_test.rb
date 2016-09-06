require 'test_helper'

include Animal

class Pig
	acts_as_animal :noise => 'oink'
end

class ActsAsAnimal::Test < ActiveSupport::TestCase
  def setup
  	@p = Pig.new
  end

  def test_makes_proper_noise
  	assert_equal @p.noise, 'oink!'
  end

  def test_generic_animal_thing
  	assert_equal @p.generic_animal_thing, 'poop'
  end
end
