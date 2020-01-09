#Declaración de la clase alimentos
class Alimentos

        attr_reader :nombre, :emision, :terreno, :proteinas, :carbo, :lipidos

        include Comparable

        # Método initialize
        # Inicializa los diferentes atributos de la clase

        def initialize(nombre, proteinas, carbo, lipidos, emision, terreno)
            @nombre = nombre
            @emision = emision
            @terreno = terreno
            @proteinas = proteinas
            @carbo = carbo
            @lipidos = lipidos
            cal = cal
        end

        # Método d_nombre
        # @return: Devuelve el nombre del alimento
        def d_nombre()
            return @nombre
        end

        # Método d_emision
        # @return: Devuelve las emisiones del alimento
        def d_emision()
            return @emision
        end

        # Método d_terreno
        # @return: Devuelve el terreno que representa hacer el alimento
        def d_terreno()
            return @terreno
        end

        # Método cal
        # @return: Devuelve las calorias que aporta un alimento
        def cal()
            return ((@proteinas * 4) + (@carbo * 9) + (@lipidos * 4)).round(1)
        end

        # Método d_prteinas
        # @return: Devuelve las proteinas del alimento
        def d_proteinas()
            return @proteinas
        end

        # Método form
        def form
            "#{nombre}, #{proteinas}, #{carbo}, #{lipidos}"
        end

        # Método <=>
        # Compara las calorias del alimento 
        def <=>(other)
            @cal <=> other.cal
        end
    
end