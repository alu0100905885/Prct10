class Alimentos

        attr_reader :nombre, :emision, :terreno, :proteinas, :carbo, :lipidos

        include Comparable
        
        def initialize(nombre, proteinas, carbo, lipidos, emision, terreno)
            @nombre = nombre
            @emision = emision
            @terreno = terreno
            @proteinas = proteinas
            @carbo = carbo
            @lipidos = lipidos
            @cal = cal
        end

  
        def d_nombre()
            return @nombre
        end

        def d_emision()
            return @emision
        end

        def d_terreno()
            return @terreno
        end

        def cal()
            return ((@proteinas * 4) + (@carbo * 9) + (@lipidos * 4)).round(1)
        end

        def d_proteinas()
            return @proteinas
        end

        #formateado
        def form
            "#{nombre}, #{proteinas}, #{carbo}, #{lipidos}"
        end

        def <=>(other)
            @cal <=> other.cal
        end
    
end