class SeatConfigsController < ApplicationController
  layout :find_layout
  before_action :set_seat_config, only: [:show, :edit, :update, :destroy, :map_with_airplane]
  power :admin_only

  # GET /seat_configs
  # GET /seat_configs.json
  def index
    @seat_configs = SeatConfig.all
  end

  # GET /seat_configs/1
  # GET /seat_configs/1.json
  def show
  end

  # GET /seat_configs/new
  def new
    @seat_config = SeatConfig.new
  end

  # GET /seat_configs/1/edit
  def edit
  end

  # POST /seat_configs
  # POST /seat_configs.json
  def create
    @seat_config = SeatConfig.new(seat_config_params)

    respond_to do |format|
      if @seat_config.save
        format.html { redirect_to @seat_config, notice: 'Seat config was successfully created.' }
        format.json { render :show, status: :created, location: @seat_config }
      else
        format.html { render :new }
        format.json { render json: @seat_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seat_configs/1
  # PATCH/PUT /seat_configs/1.json
  def update
    respond_to do |format|
      if @seat_config.update(seat_config_params)
        format.html { redirect_to @seat_config, notice: 'Seat config was successfully updated.' }
        format.json { render :show, status: :ok, location: @seat_config }
      else
        format.html { render :edit }
        format.json { render json: @seat_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_configs/1
  # DELETE /seat_configs/1.json
  def destroy
    @seat_config.destroy
    respond_to do |format|
      format.html { redirect_to seat_configs_url, notice: 'Seat config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mapping
    @seat_configs = SeatConfig.all
  end
  
  def map_with_airplane
    @seat_config.create_maping(params[:airplane_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat_config
      @seat_config = SeatConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_config_params
      params.require(:seat_config).permit(:name, :category_id, :now_of_rows, :no_of_seat_in_row)
    end
end
