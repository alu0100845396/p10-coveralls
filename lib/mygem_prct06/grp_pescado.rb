# Clase heredada de Alimento para pescados y mariscos

class GrpPescado < Alimento
   
   attr_accessor :pescado
   
   def initialize(nombre, prot, gluc, lip, pescado)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @pescado = pescado
   end

   def to_s
      s = ""
      s << "#{@pescado}  "
      s << super.to_s
      s
   end
end

=begin
grp_pes_1 = GrpPescado.new("Bacalao", 17.7, 0.0, 3.1, "Pescados y mariscos\n\n")
grp_pes_2 = GrpPescado.new("Atún", 21.5, 0.0, 15.5,"")
grp_pes_3 = GrpPescado.new("Salmón", 19.9, 0.0, 13.6,"")

puts "<----------------------------------------------->\n\n"
puts grp_pes_1.to_s
puts grp_pes_2.to_s
puts grp_pes_3.to_s
puts "<----------------------------------------------->\n\n"
=end