class AirplaneTypesController < ApplicationController
  before_action :set_airplane_type, only: [:show, :edit, :update, :destroy]

  # GET /airplane_types
  # GET /airplane_types.json
  def index
    @airplane_types = AirplaneType.all
  end

  # GET /airplane_types/1
  # GET /airplane_types/1.json
  def show
  end

  # GET /airplane_types/new
  def new
    @airplane_type = AirplaneType.new
  end

  # GET /airplane_types/1/edit
  def edit
  end

  # POST /airplane_types
  # POST /airplane_types.json
  def create
    @airplane_type = AirplaneType.new(airplane_type_params)

    respond_to do |format|
      if @airplane_type.save
        format.html { redirect_to @airplane_type, notice: 'Airplane type was successfully created.' }
        format.json { render :show, status: :created, location: @airplane_type }
      else
        format.html { render :new }
        format.json { render json: @airplane_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airplane_types/1
  # PATCH/PUT /airplane_types/1.json
  def update
    respond_to do |format|
      if @airplane_type.update(airplane_type_params)
        format.html { redirect_to @airplane_type, notice: 'Airplane type was successfully updated.' }
        format.json { render :show, status: :ok, location: @airplane_type }
      else
        format.html { render :edit }
        format.json { render json: @airplane_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airplane_types/1
  # DELETE /airplane_types/1.json
  def destroy
    @airplane_type.destroy
    respond_to do |format|
      format.html { redirect_to airplane_types_url, notice: 'Airplane type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airplane_type
      @airplane_type = AirplaneType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airplane_type_params
      params.require(:airplane_type).permit(:name)
    end
end
