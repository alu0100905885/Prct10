class Platos


    include Comparable

    attr_accessor :nombre, :alimentos, :peso, :peso_total

    def initialize(nombre, alimentos, peso, peso_total)
        @nombre = nombre
        @alimentos = alimentos 
        @peso = peso
        @peso_total = peso_total
    end

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

    def cal_plato(alimentos)
        total=0
        i=0
        while i<alimentos.length do
            total += alimentos[i]
            i+=1
        end
        return total
    end

    def to_s 
        return "Plato: #{nombre}, Partes: #{alimentos}, Peso total: #{peso_total}"
    end

end



class Plato_ < Platos
    attr_reader :cal_total
    def initialize(nombre, alimentos, peso, peso_total, cal_total)
        super(nombre, alimentos, peso, peso_total)
        @cal_total = cal_total
    end

    def suma(alimentos)
        total=0
        i=0

        while i<alimentos.length do
            total += alimentos[i]
            i+=1
        end
        return total
    end

    def to_s 
        total=0
        i=0

        while i<cal_total.length do
            total += cal_total[i]
            i+=1
        end
        return "Eficiencia = #{total}"
    end

    def <=>(other)
        @cal_total <=> other.cal_total
    end

end