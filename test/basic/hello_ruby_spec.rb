require 'minitest/unit'
require 'minitest/autorun'
require_relative '../../src/basic/hello_ruby.rb'

class TestC < Minitest::Unit::TestCase
  def test_greeting
    assert_equal HelloRuby.greeting, 'Hello, world!'
  end

  def test_hi
    assert_equal Hi.hi('chris'), 'hi Chris!'
  end

  def test_greet
    greeter = Greeter.new("Pat")
    assert_equal greeter.say_hi, "Hi Pat!"
  end
end
