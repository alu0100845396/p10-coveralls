# Pruebas usando TDD para realización de Práctica 7

require 'spec_helper'

describe MygemPrct06 do

  describe "# Expectativas de versión" do
    it 'has a version number' do
      expect(MygemPrct06::VERSION).not_to be nil
    end
  end

  describe List do

    describe "#Expectativas para List" do
      before :each do
        @List1 = List.new()
        @List2 = List.new()
        vector = [2,3,4,1]
        @List1.insert_multi(vector)
      end

      it "Probando método all? con un bloque vacío" do
        expect(@List1.all?).to eq(true)
        expect(@List2.all?).to eq(false)
      end
      it "Probando método any?" do
        expect(@List1.any?).to eq(true)
        expect(@List2.any?).to eq(false)
      end
      it "Probando método count" do
        expect(@List1.count).to eq(4)
      end
      it "Probando max" do
        expect(@List1.max).to eq(4)
      end
      it "Probando min" do
        expect(@List1.min).to eq(1)
      end
      it "Probando sort" do
        expect(@List1.sort).to eq([1,2,3,4])
      end
      it "Probando collect" do
        expect(@List1.collect{|i| i*i}).to eq([1,16,9,4])
      end 
      it "Probando map" do 
        expect(@List1.collect{|i| i*i}).to eq([1,16,9,4])
      end
      it "Probando detect" do
        expect(@List1.detect {|i| i == 4}).to eq(4)
        expect(@List1.find {|i| i == 2}).to eq(2)
      end
      it "Probando drop" do
        expect(@List1.drop(2)).to eq([3,2])
      end
      it "Probando first" do
        expect(@List1.first(1)).to eq([1])
      end
      it "Probando zip" do
        vector2 = [8,9,5,6]
        list3 = List.new()
        list3.insert_multi(vector2)
          expect(@List1.zip(list3)).to eq([[1, 6], [4, 5], [3, 9], [2, 8]])
      end
      it "Probando cycle" do
        expect(@List1.cycle(1) {|x| puts x}).to eq(nil)
      end
      it "Probando método sort" do
        expect(@List1.sort).to eq([1,2,3,4])
      end
    end
  end

    describe Alimento do
      describe "Expectativas para las clases que heredan de Alimento" do

        before :each do
      
          yogurt = []
          yogurt << [6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4]
          yogurt << [4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]
          @yogurt = Alimento.new("Yogurt", 3.8, 4.9, 3.8)
          @yogurt.datos = yogurt
          
          glucosa = []
          glucosa << [4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1]
          glucosa << [6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]
          @glucosa = Alimento.new("Glucosa", 0, 99.8, 0)
          @glucosa.datos = glucosa

        end
      
      describe "Almacenamiento de datos de los alimentos" do
        it "Almacena correctamente el nombre del alimento" do
          expect(@yogurt.nombre).to eq("Yogurt")
          expect(@glucosa.nombre).to eq("Glucosa")
        end           
        it "Almacena correctamente las proteinas del alimento" do
          expect(@yogurt.prot).to eq(3.8)
          expect(@glucosa.prot).to eq(0)
        end            
        it "Almacena correctamente los glucidos del alimento" do
          expect(@yogurt.gluc).to eq(4.9) 
          expect(@glucosa.gluc).to eq(99.8)
        end    
        it "Almacena correctamente los lípidos del alimento" do
          expect(@yogurt.lip).to eq(3.8)
          expect(@glucosa.lip).to eq(0)
        end
        it "Almacena correctamente los datos de dos individuos" do
          expect(@yogurt.datos).to eq([[6.1 , 6.6 , 6.3 , 6.3 , 6.1 , 6.9 , 6.8 , 6.5 , 6.4 , 6.9 , 6.8 , 6.5 , 6.3 , 6.2 , 6.7 , 6.2 , 5.9 , 5.8 , 5.8 , 5.8 , 5.8 , 5.8 , 5.9 , 6.2 , 6.4],[4.9 , 4.9 , 5.2 , 5.8 , 6.5 , 7.0 , 7.2 , 7.3 , 7.3 , 6.6 , 6.2 , 6.1 , 6.0 , 6.1 , 5.9 , 5.9 , 5.9 , 5.9 , 5.8 , 5.8 , 5.5 , 5.5 , 5.6 , 5.9 , 5.9]])
          expect(@glucosa.datos).to eq([[4.9 , 5.3 , 5.9 , 6.7 , 7.2 , 7.6 , 8.0 , 8.2 , 8.2 , 8.4 , 8.3 , 8.3 , 8.0 , 7.5 , 7.1 , 6.8 , 6.8 , 6.9 , 6.8 , 6.3 , 6.2 , 6.3 , 6.2 , 6.3 , 6.1],[6.3 , 5.4 , 5.6 , 5.7 , 6.5 , 7.4 , 7.9 , 7.4 , 7.7 , 7.9 , 7.9 , 7.8 , 7.8 , 7.8 , 8.0 , 8.5 , 9.4 , 10.8 , 10.5 , 9.1 , 8.9 , 8.3 , 7.7 , 7.6 , 7.5]])
        end
      end    

      describe "Probando cálculo de índice glucémico." do
      	it "Cálculo realizado correctamente del AIBC" do
          expect(@yogurt.aibc).to eq([21.75, 138.5])
          expect(@glucosa.aibc).to eq([256.0, 186.5])
        end
        it "Cálculo realizado corrrectamente del índice glucémico de cada individuo" do
          IG_ind = []
          sol = [8.5,74.26]
          for i in (0..@yogurt.aibc.length-1)
            IG_ind << ((@yogurt.aibc[i] / @glucosa.aibc[i]) * 100).round(2)
            expect(IG_ind[i]).to eq(sol[i])
          end
        end   
        it "Cálculo realizado correctamente de los índices glucémicos relativos por individuo" do
          IG_ind_rel = IG_ind.reduce :+
          expect(IG_ind_rel).to eq(82.76)
        end
        it "Cálculo realizado correctamente del indice glucémico del alimento para los individuos" do
          IG = IG_ind_rel / @yogurt.datos.length
          expect(IG).to eq(41.38)
        end
      end
    end

    describe Alimento do
      describe "Expectativas para comprobar el funcionamiento de métodos de ordenación" do

        before :each do
          @tabla = [
            GrpHuevo.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lácteos y helados"),         # 231.9 k
            GrpHuevo.new("Leche vaca", 3.3, 4.8, 3.2, "Huevos, lácteos y helados"),            # 61.2 k
            GrpHuevo.new("Yogurt", 3.8, 4.9, 3.8, "Huevos, lácteos y helados"),                # 69.0 k
            GrpCarne.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y derivados"),                         # 142.7 k
            GrpCarne.new("Ternera", 21.1, 0.0, 3.1, "Carnes y derivados"),                     # 112.3 k
            GrpCarne.new("Pollo", 20.6, 0.0, 5.6, "Carnes y derivados", ),                       # 132.8 k
            GrpPescado.new("Bacalao", 17.7, 0.0, 0.4, "Pescados y mariscos"),                    # 74.4 k       
            GrpPescado.new("Atun", 21.5, 0.0, 15.5, "Pescados y mariscos"),                      # 225.5 k
            GrpPescado.new("Salmon", 19.9, 0.0, 13.6, "Pescados y mariscos"),                    # 202.0 k
            GrpGrasos.new("Aceite de oliva", 0.0, 0.2, 99.6, "Alimentos grasos"),               # 897.2 k
            GrpGrasos.new("Mantequilla", 0.7, 0.0, 83.2, "Alimentos grasos"),                   # 751.6 k
            GrpGrasos.new("Chocolate", 5.3, 47.0, 30.0, "Alimentos grasos"),                    # 479.2 k
            GrpCarboh.new("Azucar", 0.0, 99.8, 0.0, "Alimentos ricos en carbohidratos"),        # 399.2 k
            GrpCarboh.new("Arroz", 6.8, 77.7, 0.6, "Alimentos ricos en carbohidratos"),         # 343.4 k
            GrpCarboh.new("Lentejas", 23.5, 52.0, 1.4, "Alimentos ricos en carbohidratos"),     # 314.6 k
            GrpCarboh.new("Papas", 2.0, 15.4, 0.1, "Alimentos ricos en carbohidratos"),         # 70.5 k
            GrpVerduras.new("Tomate", 1.0, 3.5, 0.2, "Verduras y hortalizas"),                    # 19.8
            GrpVerduras.new("Cebolla", 1.3, 5.8, 0.3, "Verduras y hortalizas"),                   # 31.01 k
            GrpVerduras.new("Calabaza", 1.1, 4.8, 0.1, "Verduras y hortalizas"),                  # 24.5
            GrpFruta.new("Manzana", 0.3, 12.4, 0.4, "Frutas"),                                 # 54.4 k
            GrpFruta.new("Platanos", 1.2, 21.4, 0.2, "Frutas"),                                # 92.2 k
            GrpFruta.new("Pera", 0.5, 12.7, 0.3, "Frutas")                                     # 55.55 k
                   ]
                          
          @datos = Array.new   
        end

        describe "Comprobación de métodos de ordenación" do
          it "Probando método de ordenación - for" do
            expect(@tabla.ord_for).to eq([@tabla[0], @tabla[3], @tabla[1], @tabla[4], @tabla[2], @tabla[5], @tabla[7], @tabla[6], @tabla[8], @tabla[10], @tabla[9], @tabla[11], @tabla[13], @tabla[12], @tabla[14], @tabla[16], @tabla[15], @tabla[18], @tabla[17], @tabla[19], @tabla[21], @tabla[20]])
          end
          it "Probando método de ordenación - each" do
            expect(@tabla.ord_each).to eq([@tabla[0], @tabla[3], @tabla[1], @tabla[4], @tabla[2], @tabla[5], @tabla[7], @tabla[6], @tabla[8], @tabla[10], @tabla[9], @tabla[11], @tabla[13], @tabla[12], @tabla[14], @tabla[16], @tabla[15], @tabla[18], @tabla[17], @tabla[19], @tabla[21], @tabla[20]])
          end
          it "Probando método de ordenación - sort" do
            expect(@tabla.sort).to eq([@tabla[0], @tabla[3], @tabla[1], @tabla[4], @tabla[2], @tabla[5], @tabla[7], @tabla[6], @tabla[8], @tabla[10], @tabla[9], @tabla[11], @tabla[13], @tabla[12], @tabla[14], @tabla[16], @tabla[15], @tabla[18], @tabla[17], @tabla[19], @tabla[21], @tabla[20]])
          end
        end
        
        describe "Benchmark" do
          context "Creación del método benchmark" do  
            it " " do
              Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
                tf = x.report("for:")   { @tabla.ord_for }
                tt = x.report("each:") { @tabla.ord_each }
                tu = x.report("sort:")  { @tabla.sort }
                [tf + tt + tu, (tf + tt + tu) / 3]
              end
            end
          end
        end
      end
    end
  end
end