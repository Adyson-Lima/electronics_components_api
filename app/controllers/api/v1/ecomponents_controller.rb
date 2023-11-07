class Api::V1::EcomponentsController < ApplicationController

  #before_action :set_ecomponent, only: %i[] # show update destroy

  def index
    @ecomponents = Ecomponent.all 
    render json: @ecomponents
  end

private

def set_ecomponent
  @ecomponent = Ecomponent.find(params[:id])
end

def ecomponent_params
  params.require(:ecomponent).permit(:name, :unity)
end

end