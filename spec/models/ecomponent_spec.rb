require 'rails_helper'

RSpec.describe Ecomponent, type: :model do

  before { @ecomponent = Ecomponent.new }

  describe 'Teste de preenchimento dos campos do model Ecomponent' do

    it 'name consegue ser preenchido?' do
      @ecomponent.name = "resistor"
      expect(@ecomponent.name).to eq("resistor")
    end

    it 'unity consegue ser preenchido?' do
      @ecomponent.unity = "ohms"
      expect(@ecomponent.unity).to eq("ohms")
    end

  end

  describe 'Teste de validação do model Ecomponent' do

    it 'Ecomponent valido com campos obrigatorios preenchidos?' do
      @ecomponent.name = "capacitor"
      @ecomponent.unity = "farad"
      expect(@ecomponent).to be_valid
    end

    it 'Ecomponent invalido com campos obrigatorios não preenchidos?' do
      ecomponent = Ecomponent.new
      expect(ecomponent).to be_invalid
    end

  end

end