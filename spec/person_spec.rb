require('minitest/autorun')
require_relative('../person.rb')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestPerson < Minitest::Test

  def setup
    @new_person = Person.new("Nick", 66)
  end


end