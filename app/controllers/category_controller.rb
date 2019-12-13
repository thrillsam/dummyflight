class CategoryController < ApplicationController
  layout :find_layout
  power :admin_only
  def index
  end

  def new
  	@category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Airplane was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airplane
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.permit(:name)
    end
end
