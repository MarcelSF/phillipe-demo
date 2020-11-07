class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
    # Getting information from the DB
    # Pass the information to the VIEW
  end

  def new
    # New is responsible for RENDERING THE FORM IN HTML (DISPLAYING THE FORM)
    @instrument = Instrument.new
  end

  def create
    # CREATE will take the info from the form, instantiate the correct object and ask it to SAVE to the DB
    instrument = Instrument.new(instrument_params)
    instrument.save
    redirect_to instruments_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :price, :description)
  end
end
