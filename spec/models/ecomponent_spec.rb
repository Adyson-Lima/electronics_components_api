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

end