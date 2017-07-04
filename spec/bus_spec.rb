require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestBus < Minitest::Test

  def setup
    @new_bus = Bus.new(22, "a")
    @new_person = Person.new("Greg", 34)
    @new_person1 = Person.new("Nick", 4)
    @new_person2 = Person.new("Fred", 24)
  end

  def test_drive_noise
    assert_equal("Brum brum", @new_bus.drive_noise)
  end

  def test_how_many_pass
    assert_equal(0, @new_bus.how_many_pass)
  end

  def test_pick_up
    assert_equal(0, @new_bus.how_many_pass)
    @new_bus.pick_up(@new_person)
    assert_equal(1, @new_bus.how_many_pass)
  end

  def test_pick_off
    @new_bus.pick_up(@new_person)
    assert_equal(1, @new_bus.how_many_pass)
    @new_bus.pick_off(@new_person)
    assert_equal(0, @new_bus.how_many_pass)
  end

  def test_empty_bus
    @new_bus.pick_up(@new_person)
    assert_equal(1, @new_bus.how_many_pass)
    @new_bus.empty_bus()
    assert_equal(0, @new_bus.empty_bus)
  end

end