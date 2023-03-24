gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list.rb'

class TestLinkedList < Minitest::Test
  def test_name
    expected = ''
    assert_equal expected, LinkedList.new
  end
end