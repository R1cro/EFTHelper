class Api::V1::WeaponsController < ApplicationController
  def index
    render json:  Weapon.joins(:firearm, :caliber).select('weapons.*, firearms.name AS firearm_type, calibers.name AS caliber_name')
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