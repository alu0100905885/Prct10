require "spec_helper"
require "./lib/TDD"

    describe Alimentos do


            carne_vaca = Alimentos.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
            carne_cordero = Alimentos.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
            camarones = Alimentos.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
            chocolate = Alimentos.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
            salmon = Alimentos.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
            cerdo = Alimentos.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
            pollo = Alimentos.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
            queso = Alimentos.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
            cerveza = Alimentos.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
            leche_vaca = Alimentos.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
            huevos = Alimentos.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
            cafe = Alimentos.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
            tofu = Alimentos.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
            lentejas = Alimentos.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
            nuez = Alimentos.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)

        

        it "Nombre del alimento" do
            expect(carne_vaca.d_nombre()).to eq("Carne de vaca")
        end

        it "Emisiones del alimento" do
            expect(carne_vaca.d_emision()).to eq("50.0")
        end

        it "Terreno del alimento" do
            expect(carne_vaca.d_terreno()).to eq("164.0")
        end


        it "Calorias del alimento" do
            expect(carne_vaca.cal()).to eq(96.8)
        end


    end