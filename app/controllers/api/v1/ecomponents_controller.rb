class Api::V1::EcomponentsController < ApplicationController

  before_action :set_ecomponent, only: %i[show update destroy] # show update destroy

  def index
    @ecomponents = Ecomponent.all 
    render json: @ecomponents
  end

  def show
    render json: @ecomponent
  end

  def destroy
    @ecomponent.destroy!
  end

  def create
    @ecomponent = Ecomponent.new(ecomponent_params)
    if @ecomponent.save
      render json: @ecomponent, status: :created, location: api_v1_ecomponent_url(@ecomponent)
    else
      render json: @ecomponent.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ecomponent.update(ecomponent_params)
      render json: @ecomponent
    else
      render json: @ecomponent.errors, status: :unprocessable_entity
    end
  end

private

def set_ecomponent
  @ecomponent = Ecomponent.find(params[:id])
end

def ecomponent_params
  params.require(:ecomponent).permit(:name, :unity)
end

end