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

    def - (valor)
        numLocal = (@num * valor.den) - (valor.num * @den)
        denLocal = (@den * valor.den)
        Fraccion.new(numLocal,denLocal)
    end
    
    def * (valor)
        numLocal = (@num * valor.num)
        denLocal = (@den * valor.den)
        Fraccion.new(numLocal,denLocal)
    end
    
    def / (valor)
        numLocal = (@num * valor.den)
        denLocal = (@den * valor.num)
        Fraccion.new(numLocal,denLocal)
    end
    
    
    def ==(valor)
        if((@num / @den) == (valor.num / valor.den))
            true
        else
            false
        end
        
    end
    
    
    
end