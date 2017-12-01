# Clase heredada de Alimento para alimentos grasos

class GrpGrasos < Alimento
   
   attr_accessor :grasos
   
   def initialize(nombre, prot, gluc, lip, grasos)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @grasos = grasos
   end
   
   def to_s
      s = ""
      s << "#{@grasos}  "
      s << super.to_s
      s
   end
end

=begin
grp_gras_1 = GrpGrasos.new("Aceite de oliva", 0.0, 0.2, 99.6, "Alimentos grasos\n\n")
grp_gras_2 = GrpGrasos.new("Mantequilla", 0.7, 0.0, 83.2, "")
grp_gras_3 = GrpGrasos.new("Chocolate", 5.3, 47.0, 30.0, "")

puts "<----------------------------------------------->\n\n"
puts grp_gras_1.to_s
puts grp_gras_2.to_s
puts grp_gras_3.to_s
puts "<----------------------------------------------->\n\n"
=end