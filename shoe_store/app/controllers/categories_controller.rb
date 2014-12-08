class CategoriesController < ApplicationController
  before_action :set_shoes, only: [:show]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all

  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @shoes_v = Shoe.all.order("count_view DESC").first(3)
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json

  # DELETE /categories/1
  # DELETE /categories/1.json
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoes
      @category = Category.find(params[:id])
      @shoes = @category.shoes.avaiable(params[:id]).paginate(:page => params[:page], :per_page => 3).order("price DESC")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
