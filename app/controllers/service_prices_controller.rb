class ServicePricesController < ApplicationController
  before_action :set_service_price, only: [:show, :edit, :update, :destroy]

  # GET /service_prices
  # GET /service_prices.json
  def index
    @service_prices = ServicePrice.all
  end

  # GET /service_prices/1
  # GET /service_prices/1.json
  def show
  end

  # GET /service_prices/new
  def new
    @service_price = ServicePrice.new
  end

  # GET /service_prices/1/edit
  def edit
  end

  # POST /service_prices
  # POST /service_prices.json
  def create
    @service_price = ServicePrice.new(service_price_params)

    respond_to do |format|
      if @service_price.save
        format.html { redirect_to @service_price, notice: 'Service price was successfully created.' }
        format.json { render :show, status: :created, location: @service_price }
      else
        format.html { render :new }
        format.json { render json: @service_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_prices/1
  # PATCH/PUT /service_prices/1.json
  def update
    respond_to do |format|
      if @service_price.update(service_price_params)
        format.html { redirect_to @service_price, notice: 'Service price was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_price }
      else
        format.html { render :edit }
        format.json { render json: @service_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_prices/1
  # DELETE /service_prices/1.json
  def destroy
    @service_price.destroy
    respond_to do |format|
      format.html { redirect_to service_prices_url, notice: 'Service price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_price
      @service_price = ServicePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_price_params
      params.require(:service_price).permit(:basic_price, :bussiness_price_in_percentage, :first_class_price_in_percentage, :flight_id)
    end
end
