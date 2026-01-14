
class Temperature
    def celsius(f)
        C = (f - 32) *5/9
    end

    def kelvin(c)
        K = @celsius + 273
    end
end