# Clase heredada de Alimento para carnes y derivados

class GrpCarne < Alimento
   
   attr_accessor :carne
   
   def initialize(nombre, prot, gluc, lip, carne)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @carne = carne
   end

   def to_s
      s = ""
      s << "#{@carne}  "
      s << super.to_s
      s
   end
end

=begin
grp_carn_1 = GrpCarne.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados\n\n")
grp_carn_2 = GrpCarne.new("Ternera", 21.1, 0.0, 3.1, "")
grp_carn_3 = GrpCarne.new("Pollo", 20.6, 0.0, 5.6, "")

puts "<----------------------------------------------->\n\n"
puts grp_carn_1.to_s
puts grp_carn_2.to_s
puts grp_carn_3.to_s
puts "<----------------------------------------------->\n\n"
=end