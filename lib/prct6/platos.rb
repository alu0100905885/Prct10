# Clase platos que utiliza alimentos

class Platos


    include Comparable

    attr_accessor :nombre, :alimentos, :peso, :peso_total, :cal_array, :emisiones_array

    # Método initialize
    # Inicializa los diferentes atributos de la clase

    def initialize(nombre, alimentos, peso, peso_total, cal_array, emisiones_array)
        @nombre = nombre
        @alimentos = alimentos 
        @peso = peso
        @peso_total = peso_total
        @cal_array = cal_array
        @emisiones_array = emisiones_array
    end

    # Método porcentaje
    # Calcula, segun los atributos dados, el porcentaje de proteinas, lipidos o carbohidratos
    # @return: devuelve el porcentaje requerido

    def porcentaje(alimentos, peso, peso_total)
        total=0
        i=0
        while i<alimentos.length do
            aux = alimentos[i] * peso[i]
            total += aux
            i+=1
        end

        return ((total/peso_total)*100).round(1)
    end

    # Método cal_plato
    # Método para hallar las calorias que posee un plato
    # @return: Devuelve las calorias del plato
    def cal_plato
        cal_plato=0
        i=0

        while i < cal_array.length do
            cal_plato += cal_array[i] 
            i += 1
        end
        return cal_plato
    end

    # Método to_s
    # Método para sacar informacion formateada
    # @return: Devuelve los datos formateados
    def to_s 
        return "Plato: #{nombre}, Partes: #{alimentos}, Peso total: #{peso_total}"
    end

end


#Clase plato_ heredada de clase platos

class Plato_ < Platos

    attr_reader :cal_total

    # Método initialize
    # Método para inicializar los diferentes atributos de la clase

    def initialize(nombre, alimentos, peso, peso_total, cal_array, emisiones_array)
        
        super(nombre, alimentos, peso, peso_total, cal_array, emisiones_array)

        @cal_plato = cal_plato
        @emisiones_plato = emisiones_plato
        @huella = huella
    end

    # Método emisiones_plato
    # Método para calcular la cantidad de emisiones generadas en la realización de un plato
    # @return: Devuelve las emisiones totales de un plato
    def emisiones_plato
        emisiones_plato=0
        i=0

        while i < emisiones_array.length do
            emisiones_plato += emisiones_array[i]
            i += 1
        end
        return emisiones_plato
    end

    

    # Método huella
    # Método para hallar la huella nutricional de cada plato
    # @return: Devuelve la huella generada; un valor comprendido entre 1 y 3

    def huella
       @huella_e

        if @cal_plato <= 670
            @huella_e = 1.0
        elsif @cal_plato > 670 && @cal_plato <= 830
            @huella_e = 2.0
        else 
            @huella_e = 3.0
        end

       @huella_c

        if @emisiones_plato <= 670
            @huella_c = 1.0
        elsif @emisiones_plato > 670 && @emisiones_plato <= 830
            @huella_c = 2.0
        else 
            @huella_c = 3.0
        end

        return (@huella_e+@huella_c)/2
    end

    # Método suma
    # Método anteriormente utilizado para calcular todas las sumas, que ahora solo ocupa la suma del terreno ocupado
    # @return: La suma del array de entrada

    def suma(alimentos)
        total=0
        i=0

        while i<alimentos.length do
            total += alimentos[i]
            i+=1
        end
        return total
    end


    # Método to_s
    # Método para sacar informacion formateada

    def to_s 
        return "Eficiencia = #{cal_plato}"
    end

    # Método <=>
    # Método para comparar la eficiencia energética entre platos

    def <=>(other)
        @cal_plato <=> other.cal_plato
    end

end