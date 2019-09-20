class Api::V1::BulletsController < ApplicationController
  def index
    render json: Bullet.all
  end

  def create
    caliber = Bullet.create(caliber_params)
    render json: caliber
  end

  def destroy
    Bullet.destroy(params[:id])
  end

  def update
    caliber = Bullet.find(params[:id])
    caliber.update_attributes(caliber_params)
    render json: caliber
  end

  private

  def caliber_params
    params.require(:bullet).permit(:id, :name, :caliber_id, :gun_id, :description, :penetration, :damage, :armor_damage, :frag_chance, :muzzle_velocity, :tracer, :subsonic)
  end
end