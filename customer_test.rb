require "unit/test"
require_relative "main"

class CustomerTest < Test::Unit::TestCase
    def test_new_instance 
        date = Person.new("boy", "Liam", ["Naruto", "Outer-space"] )
        assert_not_nil(date)
    end 
end