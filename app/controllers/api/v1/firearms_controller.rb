class Api::V1::FirearmsController < ApplicationController
  def index
    render json: Firearm.all
  end

  def create
    firearm = Firearm.create(firearm_params)
    render json: firearm
  end

  def show
    firearm = Firearm.find(params[:id])
    render json: firearm
  end

  def destroy
    Firearm.destroy(params[:id])
  end

  def update
    firearm = Firearm.find(params[:id])
    firearm.update_attributes(firearm_params)
    render json: firearm
  end

  private

  def firearm_params
    params.require(:firearm).permit(:id, :name)
  end
end