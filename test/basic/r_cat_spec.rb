require 'minitest/unit'
require 'minitest/autorun'
require_relative '../../src/basic/r_cat.rb'

class Test < Minitest::Unit::TestCase
    def test_to_list
        filePath = File.join(File.dirname(__FILE__), '../../resource/sample.csv')
        assert_equal RCat.toList(filePath), ["id,number", "1,34", "2,66", "3,99"]
    end

end
