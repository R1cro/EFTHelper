class Api::V1::CalibersController < ApplicationController
  def index
    render json: Caliber.all
  end

  def create
    caliber = Caliber.create(caliber_params)
    render json: caliber
  end

  def show
    caliber = Caliber.find(params[:id])
    render json: caliber
  end

  def destroy
    Caliber.destroy(params[:id])
  end

  def update
    caliber = Caliber.find(params[:id])
    caliber.update_attributes(caliber_params)
    render json: caliber
  end

  private

  def caliber_params
    params.require(:caliber).permit(:id, :name, :bullet_id, :gun_id)
  end
end