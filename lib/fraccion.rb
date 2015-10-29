class Fraccion

    attr_reader :num, :den
    
    def initialize(num=0, den=0)
        @num, @den = num, den
    end
    
    def to_s
        "#{@num}/#{@den}"
    end

    
end