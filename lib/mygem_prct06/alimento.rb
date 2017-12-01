# encoding: utf-8
# Programa principal - Práctica 9: Programación funcional

# Esta clase ha sido creada para la realización
# de las prácticas de Ruby de la asignatura Lenguajes y Paradigmas de la Programación,
# basada en la clasificación de alimentos según su grupo alimentario, junto a su proporción
# de proteínas, glúcidos y lípidos y, actualmente, para calcular el AIBC y el índice glucémico de estos alimentos mediante programación funcional en
# Ruby.  
# Con ella se han desarrollado los ejemplos
# de la asignatura Lenguajes y Paradigmas 
# de Programación.
#
# Author::    Omar Mendo Mesa  (mailto:omen.mesa20@gmail.com)


# Clase Alimento para el desarrollo de las prácticas.
class Alimento                            

   include Comparable

   attr_reader :nombre, :prot, :gluc, :lip
   attr_accessor :datos
   
# Constructor de la clase Alimento, el cual hereda a las clases hijas los argumentos "nombre", "prot", "gluc" y "lip"
   def initialize (nombre, prot, gluc, lip)
       @nombre = nombre                   # Nombre de los alimentos
       @prot = prot                       # Datos del nivel de proteinas del alimento
       @gluc = gluc                       # Datos del nivel de glúcidos del alimento
       @lip = lip                         # Datos del nivel de lípidos del alimento
   end

   def aibc                               # Implementación de método de cálculo de AIBC
       get_data = Array.new
       datos.each do |x|
        get_data << []
           x.each_cons(2){ |val|  get_data.last << ((val[1] - x[0] + val[0] - x[0]) / 2) * 5 } 
       end
       get_data.map{ |x| (x.reduce :+).round(2) }
   end

   def to_s                               # Implementación de método para obtener el alimento formateado
    s = ""
    s += "Nombre: #{@nombre}    Proteínas: #{@prot}   Glúcidos: #{@gluc}    Lípidos: #{@lip}"

    s

   end

   def val_ener
       @gluc * 4 + @lip * 9 + @prot * 4
   end
   
   def <=> (other)
    @prot<=> other.prot
   end

   def == (other)
    @nombre<=> other.nombre
   end
end

    # Creamos la clase "Array", donde crearemos nuestro métodos de ordenación
class Array

    # Método de ordenación "for"
    def ord_for
       sol = Array.new
       sol << self[0]
       
       for i in (1..self.length - 1)
          for j in (0..sol.length - 1)
             if self[i] <= sol[j]
                sol.insert(j,self[i])
                break
             end
             
             if j == sol.length-1
                sol << self[i]
             end
          end
        end
        sol
    end

    # Método de ordenación "each"
    def ord_each
        sol = Array.new
        sol << self[0]
              
        self.drop(1).each do |val1|
            sol.each_with_index do |val2,i|
                if val1 <= val2
                    sol.insert(i,val1)
                    break
                end
                    
                if i == sol.length - 1
                    sol << val1
                    break
                end
            end
        end
        sol
    end
end