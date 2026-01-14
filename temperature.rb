class Testing
 attr_accessor :fahrenheit, :celsius, :kelvin

    def initializer
        pp "Enter a temperature (Fahrenheit)"
        f = gets.chomp..to_i
        @fahrenheit = f
    end

    def testCelsius
        temperature = Temperature.new
        assert_equal 100, @celsius = temperature.celsius(@fahrenheit), "Celsius test failed"
    end

    def testKelvin
        temp = Temperature.new
       assert_equal 373, @kelvin = temp.kelvin(@celsius), "Kelvin test failed"
    end
end
