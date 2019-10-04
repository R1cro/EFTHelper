class Api::V1::BulletsController < ApplicationController
  def index
    render json: Bullet.all
  end

  def create
    bullet = Bullet.create(bullet_params)
    render json: bullet
  end

  def show
    bullet = Bullet.find(params[:id])
    render json: bullet
  end

  def destroy
    Bullet.destroy(params[:id])
  end

  def update
    bullet = Bullet.find(params[:id])
    bullet.update_attributes(bullet_params)
    render json: bullet
  end

  private

  def bullet_params
    params.require(:bullet).permit(:id, :name, :caliber_id, :gun_id, :description, :penetration, :damage, :armor_damage, :frag_chance, :muzzle_velocity, :tracer, :subsonic)
  end
end