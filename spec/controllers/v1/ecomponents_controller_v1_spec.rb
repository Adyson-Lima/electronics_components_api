require 'rails_helper'

RSpec.describe Api::V1::EcomponentsController, type: :controller do

  before{ @ecomponent = Ecomponent.create(name: "transistor", unity: "varias") }

  describe 'GET /api/v1/ecomponents' do
    it 'Consegue listar todos os ecomponents e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end