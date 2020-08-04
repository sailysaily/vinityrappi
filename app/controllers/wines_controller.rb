class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  # GET /wines
  def index
    @wines = Wine.all
  end

  # GET /wines/1
  def show
  end

  # GET /wines/new
  def new
    @wine = Wine.new
  end

  # GET /wines/1/edit
  def edit
  end

  # POST /wines
  def create
    @wine = Wine.new(wine_params)

    if @wine.save
      redirect_to @wine, notice: 'Wine was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wines/1
  def update
    if @wine.update(wine_params)
      redirect_to @wine, notice: 'Wine was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wines/1
  def destroy
    @wine.destroy
    redirect_to root_path, notice: 'Wine was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine
      @wine = Wine.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_params
      params.require(:wine).permit(:name, :winery, :rating, :region, :grapes, :color, :wine_style, :food_pairing, :year, :story, :backgroud_image, :price)
    end
end
