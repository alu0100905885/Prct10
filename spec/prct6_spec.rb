require "spec_helper"
require "./lib/TDD"

    describe Alimentos do

        @nombre = 'Carne de vaca'
        @emision = '50.0'
        @terreno = '164.0'

        objeto = Alimentos.new(@nombre, @emision, @terreno)

        it "Nombre del alimento" do
            expect(objeto.d_nombre()).to eq("Carne de vaca")
        end

        it "Emisiones del alimento" do
            expect(objeto.d_emision()).to eq("50.0")
        end

        it "Terreno del alimento" do
            expect(objeto.d_terreno()).to eq("164.0")
        end
    end