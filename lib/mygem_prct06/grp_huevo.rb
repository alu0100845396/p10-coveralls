# Clase heredada de Alimento para huevos, lácteos y helados

class GrpHuevo < Alimento

   attr_accessor :huevos

   def initialize(nombre, prot, gluc, lip, huevos)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @huevos = huevos
   end

   def to_s
      s = ""
      s << "#{@huevos}  "
      s << super.to_s
      s
   end
end

=begin
grp_huev_1 = GrpHuevo.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados\n\n")
grp_huev_2 = GrpHuevo.new("Leche de vaca", 3.3, 4.8, 3.2, "")
grp_huev_3 = GrpHuevo.new("Yogurt",3.8, 4.9, 3.8, "")

puts "<----------------------------------------------->\n\n"
puts grp_huev_1.to_s
puts grp_huev_2.to_s
puts grp_huev_3.to_s
puts "<----------------------------------------------->\n\n"
=end