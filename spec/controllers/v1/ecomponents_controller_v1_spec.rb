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

  describe 'GET /api/v1/ecomponents/id' do
    it 'Consegue retornar um ecomponent especifico e retornar status 200?' do
      get :show, params: {id: @ecomponent.id}
      expect(response.body).to include_json(id: @ecomponent.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/ecomponents' do
    it 'Consegue criar um ecomponent e retornar status 201?' do
      post :create, params: {ecomponent: {name: "memristor", unity: "ohms"}, format: :json}
      expect(response.body).to include_json(name: "memristor")
      expect(response).to have_http_status(201)
    end
  end

end