# Clase heredada de Alimento para verduras y hortalizas

class GrpVerduras < Alimento
   
   attr_accessor :verduras
   
   def initialize(nombre, prot, gluc, lip, verduras)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @verduras = verduras
   end
   
   def to_s
      s = ""
      s << "#{@verduras}  "
      s << super.to_s
      s
   end
end

=begin
grp_ver_1 = GrpVerduras.new("Tomate", 1.0, 3.5, 0.2, "Verduras y hortalizas\n\n")
grp_ver_2 = GrpVerduras.new("Cebolla", 1.3, 5.8, 0.3,"")
grp_ver_3 = GrpVerduras.new("Calabaza", 1.1, 4.8, 0.1,"")

puts "<----------------------------------------------->\n\n"
puts grp_ver_1.to_s
puts grp_ver_2.to_s
puts grp_ver_3.to_s
puts "<----------------------------------------------->\n\n"
=end