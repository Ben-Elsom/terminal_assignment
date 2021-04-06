require "unit/test"
require_relative "../main"

class CustomerTest < Test::Unit::TestCase
    def test_new_instance 
        "name of class we want to test" = "example creation of that class"
        assert_not_nil("name of the variable we want to check")
    end 
end