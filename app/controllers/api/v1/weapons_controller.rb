class Api::V1::WeaponsController < ApplicationController
  def index
    render json: Weapon.all
  end

  def show
    weapon = Weapon.find(params[:id])
    render json: weapon
  end

  private

  def weapon_params
    params.require(:weapon).permit(:id, :name, :foldable, :fire_bod, :fire_rate, :effective_range)
  end
end