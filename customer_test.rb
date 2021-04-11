require 'test/unit'
require_relative 'main'

class CustomerTest < Test::Unit::TestCase
    def test_new_instance 
        test = Person.new("boy", "Liam", ["Naruto", "Outer-space"] )
        assert_not_nil(test)
    end 
end