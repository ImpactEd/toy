class PupilsController < ApplicationController
  before_action :set_pupil, only: %i[ show edit update destroy ]

  # GET /pupils or /pupils.json
  def index
    @pupils = Pupil.all
  end

  # GET /pupils/1 or /pupils/1.json
  def show
  end

  # GET /pupils/new
  def new
    @pupil = Pupil.new
  end

  # GET /pupils/1/edit
  def edit
  end

  # POST /pupils or /pupils.json
  def create
    @pupil = Pupil.new(pupil_params)

    respond_to do |format|
      if @pupil.save
        format.html { redirect_to @pupil, notice: "Pupil was successfully created." }
        format.json { render :show, status: :created, location: @pupil }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pupil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupils/1 or /pupils/1.json
  def update
    respond_to do |format|
      if @pupil.update(pupil_params)
        format.html { redirect_to @pupil, notice: "Pupil was successfully updated." }
        format.json { render :show, status: :ok, location: @pupil }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pupil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupils/1 or /pupils/1.json
  def destroy
    @pupil.destroy
    respond_to do |format|
      format.html { redirect_to pupils_url, notice: "Pupil was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil
      @pupil = Pupil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pupil_params
      params.require(:pupil).permit(:first_name, :last_name, :external_ident, :school_id)
    end
end
