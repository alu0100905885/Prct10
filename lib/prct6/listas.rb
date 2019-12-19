Nodo = Struct.new(:value, :next, :prev)

# Inicialización de la clase lista

class Listas

    include Enumerable

    attr_accessor :cabeza, :cola, :nodo_actual
    
    # Método initialize
    # Inicializa los atributos de la clase
    def initialize(cabeza,cola)
        @cabeza = cabeza
	    @cola = cola
    end 
    
    # Método insertar_cabeza
    # Inserta un valor en la lista por la cabeza
    def insertar_cabeza(x)
        node = Nodo.new(x,nil,nil)

	if @cabeza==nil && @cola==nil
		node.prev = @cola
	        node.next = @cabeza
		@nodo_actual = node
	        @cabeza = node
		@cola = node
	else
		node.prev = @cabeza
		node.next = nil
		@nodo_actual = node
		@cabeza.next = node
		@cabeza = node
	end
    end 

    # Método insertar_cola
    # Inserta un valor en la lista por la cola
    def insertar_cola(x)
        node = Nodo.new(x,nil,nil)

	if @cabeza==nil && @cola==nil
		node.prev = @cabeza
	        node.next = @cola
		@nodo_actual = node
	        @cola = node
		@cabeza = node
	else
		node.prev = @cola
		node.next = nil
		@nodo_actual = node
		@cola.next = node
		@cola = node
	end
    end 
    
    # Método insertar_varios
    # Inserta multiples valores por la cabeza
    def insertar_varios(nodos)
        nodos.each do |nd|
        	insertar_cabeza(nd)
        end
    end
    
    # Método extraer_inicio
    # Extrae un valor por la cabeza
    def extraer_inicio()
       @cola=@cola.next
    end
    
    # Método extraer_final
    # Extrae un valor por la cola
    def extraer_final()
       @cabeza = @cabeza.prev
    end

    def to_s
         @cabeza.to_s 
    end

    # Método each
    # Recorre la lista haciendo yield del valor
    def each
        while @cabeza != @cola
            yield @cabeza.value
            @cabeza=@cabeza.prev
        end

        if @cabeza == @cola
           if @cabeza == nil
            nil
           else
            yield @cola.value
           end
        end
    end
end 