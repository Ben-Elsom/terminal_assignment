class Emptyfield < StandardError
    def initialize
        super ("Please enter in a name")
    end
end 