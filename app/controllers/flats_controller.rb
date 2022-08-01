class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit destroy]

  def index
    @flats = Flat.all
    @flat = Flat.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(%i[name address price_per_night number_of_guests])
  end
end
