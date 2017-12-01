# Clase heredada de Alimento para frutas

class GrpFruta < Alimento
   
   attr_accessor :fruta
   
   def initialize(nombre, prot, gluc, lip, fruta)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @fruta = fruta
   end

   def to_s
      s = ""
      s << "#{@fruta}  "
      s << super.to_s
      s
   end
end

=begin
grp_frut_1 = GrpFruta.new("Manzana", 0.3, 12.4, 0.4, "Frutas\n\n")
grp_frut_2 = GrpFruta.new("Plátanos", 1.2, 21.4, 0.2, "")
grp_frut_3 = GrpFruta.new("Pera", 0.5, 12.7, 0.3, "")

puts "<----------------------------------------------->\n\n"
puts grp_frut_1.to_s
puts grp_frut_2.to_s
puts grp_frut_3.to_s
puts "<----------------------------------------------->\n\n"
=end