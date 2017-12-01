# Implementación de lista para Práctica 8

# Clase Lista para práctica 7 y 8 de
# la asignatura Lenguajes y Paradigmas de la Programación


Node = Struct.new(:value, :next, :prev)

class List

    include Enumerable

    attr_accessor :head, :tail
       
    # Método constructor de la clase List.
    def initialize()
        @head = nil
        @tail = nil
    end

    # Método para saber si la lista está vacía.
    def empty?              
        if @head == nil
            return true
        else
            return false
        end
    end

    # Método para insertar por el principio de la lista un nodo o valor.
    def insert_beginning(x)
        node = Node.new(x,nil,nil)
        if (@head == nil)
            @head = node
            @tail = node
        else      
            temporal_node = @head
            @head = node
            @head.next = temporal_node
            temporal_node.prev = @head
        end
    end

    # Método para insertar por el final de la lista un nodo o valor.
    def insert_end(x)
        node = Node.new(x,nil,nil)
        if (@head == nil)
            @head = node
            @tail = node
        else         
            temporal_node = @tail
            @tail = node
            @tail.prev = temporal_node     
            temporal_node.next = @tail
        end
    end

    # Método para insertar nodos o valores múltiples a la lista.
    def insert_multi(nodes)        
        nodes.each do |nodo| 
            insert_beginning(nodo)
        end
    end

    # Método para extaer un nodo o valor por el principio de la lista.
    def extract_beginning()
      
        if @head == nil
            return nil
        else
            temporal_node = @head
            @head = @head.next
            return temporal_node
        end
    end

    # Método para extaer un nodo o valor por el final de la lista.
    def extract_end()     
        if @tail == nil
            return nil 
        else           
            temporal_node = @tail
            @tail = @tail.prev
            return temporal_node       
        end            
    end

    # Método para realizar correctamente Enumerable.
    def each 
        if (@head == nil) and (@tail == nil)
            yield nil
        elsif (@head == @tail)
            yield @head.value
        else
            while (@head != nil)
                yield @head.value
                @head = @head.next
            end   
        end
    end
end