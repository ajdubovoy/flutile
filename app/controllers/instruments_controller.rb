class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_instrument, only: [:show, :edit, :update, :destroy]
  
  def index
    @instruments = policy_scope(Instrument)
  end

  def show; end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    authorize @instrument
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def edit;end

  def update
    if @instrument.update(instrument_params)
      redirect_to instrument_path(@instrument)
    else
      render :update
    end
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def find_instrument
    @instrument = Instrument.find(params[:id])
    authorize @instrument
  end

  def instrument_params
    params.require(:instrument).permit(:name, :description, :photo, :location, :price)
  end
end
