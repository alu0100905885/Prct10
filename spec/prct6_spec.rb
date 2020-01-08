require "spec_helper"
require "./lib/prct6/prct6"
require "./lib/prct6/listas"
require "./lib/prct6/platos"

    describe Alimentos do

        context Alimentos do
            before :each do

                @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
                @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
                @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
                @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
                @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
                @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
                @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
                @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
                @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
                @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
                @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
                @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
                @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
                @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
                @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)
            end
        

        it "Nombre del alimento" do
            expect(@carne_vaca.nombre()).to eq("Carne de vaca")
        end

        it "Emisiones del alimento" do
            expect(@carne_vaca.d_emision()).to eq(50.0)
        end

        it "Terreno del alimento" do
            expect(@carne_vaca.d_terreno()).to eq(164.0)
        end


        it "Calorias del alimento" do
            expect(@carne_vaca.cal()).to eq(96.8)
        end

        it "Dato formateado" do
            expect(@carne_vaca.form).to eq("Carne de vaca, 21.1, 0.0, 3.1")
         end


        it "Calorias hombre" do
            calH=(@carne_vaca.cal()*4)+(@nuez.cal()*4) +(@leche_vaca.cal()*4) +(@queso.cal()*2)
            proH=(@carne_vaca.d_proteinas()*4)+(@nuez.d_proteinas()*4) +(@leche_vaca.d_proteinas()*4) +(@queso.d_proteinas()*2)
            
            if calH < 3000
                puts "Calorias de hombre insuficientes"
            end
            if proH < 54
                puts "Proteinas de homre insuficiente"
            end


            emisionesH=(@carne_vaca.d_emision()*4)+(@nuez.d_emision()*4) +(@leche_vaca.d_emision()*4) +(@queso.d_emision()*2)
            expect(emisionesH).to eq(236.0)
        end
        
        it "Calorias mujer" do
            calM=(@carne_vaca.cal()*2)+(@nuez.cal()*3) +(@leche_vaca.cal()*4) +(@queso.cal()*2)
            proM=(@carne_vaca.d_proteinas()*2)+(@nuez.d_proteinas()*3) +(@leche_vaca.d_proteinas()*4) +(@queso.d_proteinas()*2) 
            
            if calM < 2300
                puts "Calorias de hombre insuficientes"
            end
            if proM < 41
                puts "Proteinas de homre insuficiente"
            end

            emisionesM=(@carne_vaca.d_emision()*2)+(@nuez.d_emision()*3) +(@leche_vaca.d_emision()*4) +(@queso.d_emision()*2)
            expect(emisionesM).to eq(135.7)
        end
    end


#---------------------------------------------------------------------------------

    context Listas do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

            @lista1 = Listas.new(nil,nil)
      end
      
        #Comprueba:
         #Existencia de nodo
         #Existencia de lista
         #Insertar elemento
        it 'Insertar por head' do
            @lista1.insertar_cabeza(@carne_vaca)
            expect(@lista1.cabeza.value).to eq(@carne_vaca)
        end

        it 'Insertar por cola' do
            @lista1.insertar_cola(@carne_vaca)
            expect(@lista1.cola.value).to eq(@carne_vaca)
        end

        it 'Insertar varios elementos' do
            @lista1.insertar_varios([@carne_vaca,@nuez,@cafe])
            expect(@lista1.cola.value).to equal(@carne_vaca)
            expect(@lista1.cabeza.value).to equal(@cafe)
        end

        it 'Extraer primer elemento de la lista' do
            @lista1.insertar_varios([@carne_vaca,@nuez,@cafe])
            @lista1.extraer_inicio()
            expect(@lista1.cabeza.value).to equal(@cafe)
        end

        it 'Extraer primer elemento de la lista' do
            @lista1.insertar_varios([@carne_vaca,@nuez,@cafe])
            @lista1.extraer_final()
            expect(@lista1.cola.value).to equal(@carne_vaca)
        end

 
    #---------------------------------------------------------------------------------
            #Media de hombres y mujeres cal/dia = 2650
            #40% = 1060
            #20% = 530
            #25% = 662,5
            #15% = 397,5
            #60% = 1590
            #85% = 2252,5
            #50% = 1325

            
            #40% carbo
            #40% grasa
            #20% proteina
           # @espanola = Listas.new(nil , nil)

            # it 'Impacto diario española' do
            #     @espanola.insertar_varios([@carne_vaca,@nuez,@cafe,@huevos,@queso,@chocolate])
            #     diario = 0
            #     while ((@espanola.cabeza.value) != nil)
            #         x += @espanola.cabeza.value.d_emision() 
            #         @espanola.extraer_final()
            #     end
            #     expect(x).to eq(1)
            # end

            # it 'Impacto anual española' do
            #     expect().to eq()
            # end

            # it 'Terreno usado española' do
            #     expect().to eq()
            # end


            # @vasca = Listas.new(nil , nil)
            # @vasca.insertar_varios([@carne_vaca,@nuez,@cafe])

            # @vegetaria = Listas.new(nil , nil)
            # @vegetaria.insertar_varios([@carne_vaca,@nuez,@cafe])

            # @vegetaliana = Listas.new(nil , nil)
            # @vegetaliana.insertar_varios([@carne_vaca,@nuez,@cafe])

            #@locura = Listas.new(nil , nil)
            #@locura.insertar_varios([@carne_vaca,@nuez,@cafe])

    
        
              
    end

    #-----------------------------PRACT8----------------------------------------------------

    context 'Comparar' do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)
      end
      
       
        it 'Comparar: cafe tiene menos calorias que queso = TRUE' do
            expect(@cafe < @queso).to eq(true) 
        end

        it 'Comparar: queso tiene más calorias que cafe = TRUE' do
            expect(@queso > @cafe).to eq(true) 
        end

        it 'Comparar: queso tiene mismas calorias que queso = TRUE' do
            expect(@queso == @queso).to eq(true) 
        end
    
        it 'Comparar: queso tiene más o igual calorias que cafe = TRUE' do
            expect(@queso >= @cafe).to eq(true)
        end
    
        it 'Comparar: queso tiene menos o igual calorias que cafe = TRUE' do
            expect(@cafe <= @queso).to eq(true)
        end


        
    end


    #---------------------------PRACT8------------------------------------------------------


    context 'Enumerar' do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

            @lista1 = Listas.new(nil,nil)
      end
      
        it 'Prueba del metodo collect con numeros' do
            @lista1.insertar_varios([@carne_vaca, @tofu])
            expect(@lista1.collect{|i| i.cal.round(1)*2}).to eq([136.6, 193.6])
        end
       
        it 'Select' do
            @lista1.insertar_varios([@carne_vaca, @tofu, @salmon, @lentejas])
            expect(@lista1.collect{|i| i.cal.round(1)*2}).to eq([1135.2, 268.0, 136.6, 193.6])
        end
        
        it 'Prueba minimo en una inserción con numeros' do
            @lista1.insertar_varios([@tofu,@carne_vaca])
            expect(@lista1.min).to eq(@tofu)
        end

        it 'Prueba minimo en una inserción con numeros' do
            @lista1.insertar_varios([@carne_vaca, @tofu])
            expect(@lista1.max).to eq(@carne_vaca)
        end

        it 'Prueba ordenacion en una insercion con numeros' do
            @lista1.insertar_varios([@carne_vaca, @tofu, @salmon])
            expect(@lista1.sort).to eq([@tofu, @carne_vaca, @salmon])
          end
        
    end

    #---------------------------PRACT8------------------------------------------------------

    context Platos do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

            @plato1 = Platos.new("Pollo con queso",[@pollo.nombre, @queso.nombre], [2.0,0.5], 250, [@pollo.cal, @queso.cal], [@pollo.emision, @queso.emision])
        end

        it "Nombre plato" do 
            expect(@plato1.nombre).to eq("Pollo con queso")
        end

        it "Alimentos plato" do 
            expect(@plato1.alimentos).to eq([@pollo.nombre, @queso.nombre])
        end

        it "Peso alimentos plato" do 
            expect(@plato1.peso).to eq([2.0,0.5])
        end

        it "Porcentaje proteinas plato" do 
            expect(@plato1.porcentaje([@pollo.proteinas, @queso.proteinas],[2.0,0.5], 250)).to eq(21.5)
        end

        it "Porcentaje lipidos plato" do 
            expect(@plato1.porcentaje([@pollo.lipidos, @queso.lipidos],[2.0,0.5], 250)).to eq(11.1)
        end

        it "Porcentaje hidratos de carbono plato" do 
            expect(@plato1.porcentaje([@pollo.carbo, @queso.carbo],[2.0,0.5], 250)).to eq(0.3)
        end

        it "Calorias plato" do 
            expect(@plato1.cal_plato).to eq(348.5)
        end

        it "Plato formateado" do 
            expect(@plato1.to_s).to eq("Plato: #{@plato1.nombre}, Partes: #{@plato1.alimentos}, Peso total: #{@plato1.peso_total}")
        end
    end



 #---------------------------------------------------------------------------------
    
    context Plato_ do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

            @plato1 = Plato_.new("Pollo con queso",[@pollo.nombre, @queso.nombre], [2.0,0.5], 250, [@pollo.cal, @queso.cal], [@pollo.emision, @queso.emision])
            @plato2 = Plato_.new("Pollo con nueces",[@pollo.nombre, @nuez.nombre], [2.0,0.5], 250, [@pollo.cal, @nuez.cal], [@pollo.emision, @nuez.emision])
        end

        it "Emisiones plato" do
            expect(@plato1.emisiones_plato).to eq(16.7)
        end

        it "Terreno plato" do
            expect(@plato1.suma([@pollo.d_terreno, @queso.d_terreno])).to eq(48.1)
        end

        it "Cal formateado" do
            expect(@plato1.to_s).to eq("Eficiencia = #{@pollo.cal + @queso.cal}")
        end

        it "Clase de objeto" do
            expect(@plato1.class).to eq(Plato_)
            expect(@plato1.instance_of? Plato_).to eq(true)
            expect(@plato1).to respond_to('peso')
        end
        
        it "Jerarquía de objeto" do
            expect(@plato1.is_a? Platos).to eq(true)
            expect(@plato1.is_a? Plato_).to eq(true)
            expect(@plato1.is_a? Alimentos).to eq(false)
        end

        it "Comparable" do
            expect(Plato_.ancestors).to include(Comparable)
            expect(Plato_).to respond_to(:<=>)
        end
        
        it 'Comparar: hay diferencia menor entre el plato ' do
            expect(@plato1 < @plato2).to eq(true) 
        end

        it 'Comparar: hay diferencia menor entre el plato' do
            expect(@plato1 > @plato2).to eq(false) 
        end

        it 'Comparar: hay diferencia menor o igual entre el plato' do
            expect(@plato1 <= @plato2).to eq(true) 
        end

        it 'Comparar: hay diferencia menor o igual entre el plato ' do
            expect(@plato1 >= @plato2).to eq(false) 
        end

        it 'Comparar: el plato es igual' do
            expect(@plato1 == @plato2).to eq(false) 
        end


    end


#------------------------PRACT9---------------------------------------------------------

    context  "Menú" do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

            @plato1 = Plato_.new("Pollo con queso",[@pollo.nombre, @queso.nombre], [2.0,0.5], 250, [@pollo.cal, @queso.cal], [@pollo.emision, @queso.emision])
            @plato2 = Plato_.new("Pollo con nueces",[@pollo.nombre, @nuez.nombre], [2.0,0.5], 250, [@pollo.cal, @nuez.cal], [@pollo.emision, @nuez.emision])
            @plato3 = Plato_.new("Pollo con lentejas",[@pollo.nombre, @lentejas.nombre], [2.0,0.5], 250, [@pollo.cal, @lentejas.cal], [@pollo.emision, @lentejas.emision])
           
            
            @menu1 = [@plato1, @plato2, @plato3]
            
        end

        it "Menú existe y contiene los datos" do
            expect(@menu1).to eq([@plato1,@plato2,@plato3])
        end

        it "Huella nutricional total" do
            expect(@plato1.huella).to eq(1)
        end

        it "Suma de platos" do
            expect(@plato1.cal_plato+@plato2.cal_plato).to eq(938.3)
        end

        it "Cálculo de huella nutricional máxima de un plato" do
            expect(@menu1.max_by {|plato_| plato_.huella}).to eq(@plato3)
        end

        it "Incremento de precio de los platos según la huella nutricional" do
            precio1 = [10.34, 20.45, 15.45]

            precio_array = Array.new

            nutmax = @menu1.max_by {|plato_| plato_.huella}
            precio_array = precio1.map {|precio1| ((precio1+(3-nutmax.huella)/(3-nutmax.huella))).round(2)}
            expect(precio_array.is_a? Array).to eq(true)
            expect(precio_array).to eq([11.34, 21.45, 16.45])
            
        end
    end


#------------------------PRACT10---------------------------------------------------------

    context  "DSL" do
        before :each do	

            @carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            @carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            @camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            @chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            @salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            @cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            @pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            @queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            @cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            @leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            @huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            @cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            @tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            @lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            @nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)
            
        end

    end
end