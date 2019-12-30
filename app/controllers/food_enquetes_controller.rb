class FoodEnquetesController < ApplicationController
  before_action :set_food_enquete, only: [:show, :edit, :update, :destroy]

  # GET /food_enquetes
  # GET /food_enquetes.json
  def index
    @food_enquetes = FoodEnquete.all
  end

  # GET /food_enquetes/1
  # GET /food_enquetes/1.json
  def show
  end

  # GET /food_enquetes/new
  def new
    @food_enquete = FoodEnquete.new
  end

  # GET /food_enquetes/1/edit
  def edit
  end

  # POST /food_enquetes
  # POST /food_enquetes.json
  def create
    @food_enquete = FoodEnquete.new(food_enquete_params)

    respond_to do |format|
      if @food_enquete.save
        format.html { redirect_to @food_enquete, notice: 'Food enquete was successfully created.' }
        format.json { render :show, status: :created, location: @food_enquete }
      else
        format.html { render :new }
        format.json { render json: @food_enquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_enquetes/1
  # PATCH/PUT /food_enquetes/1.json
  def update
    respond_to do |format|
      if @food_enquete.update(food_enquete_params)
        format.html { redirect_to @food_enquete, notice: 'Food enquete was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_enquete }
      else
        format.html { render :edit }
        format.json { render json: @food_enquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_enquetes/1
  # DELETE /food_enquetes/1.json
  def destroy
    @food_enquete.destroy
    respond_to do |format|
      format.html { redirect_to food_enquetes_url, notice: 'Food enquete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_enquete
      @food_enquete = FoodEnquete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_enquete_params
      params.require(:food_enquete).permit(:name, :mail, :age, :food_id, :score, :request, :present_id)
    end
end
