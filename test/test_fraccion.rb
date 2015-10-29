require "lib/fraccion.rb"
require "test/unit"

class Testeador < Test::Unit::TestCase
 
    def setup 
        @funcion1 = Fraccion.new()
        @funcion2 = Fraccion.new(2,3)
        @funcion3 = Fraccion.new(5,2)
        @funcion4 = Fraccion.new(1,2)
        @funcion5 = Fraccion.new(3,7)
        @funcion6 = @funcion4 + @funcion5
    end
 
 
    def test_simple
        assert_equal(0,@funcion1.num)
        assert_equal(0,@funcion1.den)
        assert_equal(2,@funcion2.num)
        assert_equal(3,@funcion2.den)
        assert_equal("5/2",@funcion3.to_s)
        assert_equal(Fraccion.new(13,14).to_s,@funcion6.to_s)
    end
 
end