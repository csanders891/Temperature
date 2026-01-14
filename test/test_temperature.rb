require './minitest/autorun'
require './temperature.rb'

class Temperature < Minitest::Test
    def celsius(f)
        C = (f - 32) *5/9
    end

    def kelvin(c)
        K = @celsius + 273
    end
end