# test to prove if struct
require "minitest/autorun"
require 'minitest/pride'
require "./struct-sample"   # when requiring, we don't need .rb

class StructSampleTest < Minitest::Test

  def test_it_can_retrieve_name
    person = Person.new("jwo", "wo", "sugar land")
    assert_equal "jwo", person.name
  end

  def test_it_can_retrieve_castle
    person = Person.new("jwo", "wo", "sugar land")
    assert_equal "sugar land", person.castle
  end

  def test_it_can_retrieve_house
    person = Person.new("jwo", "wo", "sugar land")
    assert_equal "wo", person.house
  end

  def test_it_can_set_a_new_name
    person = Person.new("jwo", "wo", "sugar land")
    person.name = "awo"
    assert_equal "awo", person.name
  end

  def test_will_error_if_we_do_not_send_in_castle
    assert_raises(ArgumentError) {
      person = Person.new("jwo", "wo")
    }
  end
end
