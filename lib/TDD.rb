class Alimentos

        attr_reader :nombre
        def initialize(nombre, emision, terreno)
            @nombre = nombre
            @emision = emision
            @terreno = terreno
        end

  
        def d_nombre()
            "#{@nombre}"
        end

        def d_emision()
            "#{@emision}"
        end

        def d_terreno()
            "#{@terreno}"
        end

    


end