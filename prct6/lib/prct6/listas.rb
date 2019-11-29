Nodo = Struct.new(:value, :next, :prev)

class Listas

    include Enumerable

    attr_accessor :cabeza, :cola, :nodo_actual
    
    def initialize(cabeza,cola)
        @cabeza = cabeza
	@cola = cola
    end 
    
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
    
    def insertar_varios(nodos)
        nodos.each do |nd|
        	insertar_cabeza(nd)
        end
    end
    
    def extraer_inicio()
       @cola=@cola.next
    end
    
    def extraer_final()
       @cabeza = @cabeza.prev
    end

    def to_s
         @cabeza.to_s 
    end

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