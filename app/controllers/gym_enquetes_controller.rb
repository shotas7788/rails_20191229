class GymEnquetesController < ApplicationController
  before_action :set_gym_enquete, only: [:show, :edit, :update, :destroy]

  # GET /gym_enquetes
  # GET /gym_enquetes.json
  def index
    @gym_enquetes = GymEnquete.all
  end

  # GET /gym_enquetes/1
  # GET /gym_enquetes/1.json
  def show
  end

  # GET /gym_enquetes/new
  def new
    @gym_enquete = GymEnquete.new
  end

  # GET /gym_enquetes/1/edit
  def edit
  end

  # POST /gym_enquetes
  # POST /gym_enquetes.json
  def create
    @gym_enquete = GymEnquete.new(gym_enquete_params)

    respond_to do |format|
      if @gym_enquete.save
        format.html { redirect_to @gym_enquete, notice: 'Gym enquete was successfully created.' }
        format.json { render :show, status: :created, location: @gym_enquete }
      else
        format.html { render :new }
        format.json { render json: @gym_enquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gym_enquetes/1
  # PATCH/PUT /gym_enquetes/1.json
  def update
    respond_to do |format|
      if @gym_enquete.update(gym_enquete_params)
        format.html { redirect_to @gym_enquete, notice: 'Gym enquete was successfully updated.' }
        format.json { render :show, status: :ok, location: @gym_enquete }
      else
        format.html { render :edit }
        format.json { render json: @gym_enquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_enquetes/1
  # DELETE /gym_enquetes/1.json
  def destroy
    @gym_enquete.destroy
    respond_to do |format|
      format.html { redirect_to gym_enquetes_url, notice: 'Gym enquete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym_enquete
      @gym_enquete = GymEnquete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gym_enquete_params
      params.require(:gym_enquete).permit(:name, :mail, :age, :course_id, :score, :request, :present_id)
    end
end
