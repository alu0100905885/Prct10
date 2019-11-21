class Alimentos

        attr_reader :nombre, :emision, :terreno, :proteinas, :carbo, :lipidos
        def initialize(nombre, proteinas, carbo, lipidos, emision, terreno)
            @nombre = nombre
            @emision = emision
            @terreno = terreno
            @proteinas = proteinas
            @carbo = carbo
            @lipidos = lipidos
        end

  
        def d_nombre()
            "#{@nombre}"
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
    
        


end