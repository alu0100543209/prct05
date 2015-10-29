class Fraccion

    attr_reader :num, :den
    
    def initialize(num=0, den=0)
        @num, @den = num, den
    end
    
    def to_s
        "#{@num}/#{@den}"
    end
    
    def + (valor)
        numLocal = (@num * valor.den) + (valor.num * @den)
        denLocal = (@den * valor.den)
        Fraccion.new(numLocal,denLocal)
    end

    
end