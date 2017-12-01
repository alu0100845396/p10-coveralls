# Clase heredada de Alimento para alimentos ricos en carbohidratos

class GrpCarboh < Alimento
   
   attr_accessor :carboh
   
   def initialize(nombre, prot, gluc, lip, carboh)
      @nombre = nombre
      @prot = prot
      @gluc = gluc
      @lip = lip
      @carboh = carboh
   end
   
   def to_s
      s = ""
      s << "#{@carboh}  "
      s << super.to_s
      s
   end
   
end

=begin
grp_carb_1 = GrpCarboh.new("Azúcar", 0.0, 99.8, 0.0 , "Alimentos ricos en carbohidratos\n\n")
grp_carb_2 = GrpCarboh.new("Arroz", 6.8, 77.7, 0.6,"")
grp_carb_3 = GrpCarboh.new("Lentejas", 23.5, 52.0, 1.4,"")
grp_carb_4 = GrpCarboh.new("Papas", 2.0, 15.4, 0.1,"")

puts "<----------------------------------------------->\n\n"
puts grp_carb_1.to_s
puts grp_carb_2.to_s
puts grp_carb_3.to_s
puts grp_carb_4.to_s
puts "<----------------------------------------------->\n\n"
=end