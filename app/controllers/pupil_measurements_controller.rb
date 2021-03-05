class PupilMeasurementsController < ApplicationController
  before_action :set_pupil_measurement, only: %i[ show edit update destroy ]

  # GET /pupil_measurements or /pupil_measurements.json
  def index
    @pupil_measurements = PupilMeasurement.all
  end

  # GET /pupil_measurements/1 or /pupil_measurements/1.json
  def show
  end

  # GET /pupil_measurements/new
  def new
    @pupil_measurement = PupilMeasurement.new
  end

  # GET /pupil_measurements/1/edit
  def edit
  end

  # POST /pupil_measurements or /pupil_measurements.json
  def create
    @pupil_measurement = PupilMeasurement.new(pupil_measurement_params)

    respond_to do |format|
      if @pupil_measurement.save
        format.html { redirect_to @pupil_measurement, notice: "Pupil measurement was successfully created." }
        format.json { render :show, status: :created, location: @pupil_measurement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pupil_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupil_measurements/1 or /pupil_measurements/1.json
  def update
    respond_to do |format|
      if @pupil_measurement.update(pupil_measurement_params)
        format.html { redirect_to @pupil_measurement, notice: "Pupil measurement was successfully updated." }
        format.json { render :show, status: :ok, location: @pupil_measurement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pupil_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupil_measurements/1 or /pupil_measurements/1.json
  def destroy
    @pupil_measurement.destroy
    respond_to do |format|
      format.html { redirect_to pupil_measurements_url, notice: "Pupil measurement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil_measurement
      @pupil_measurement = PupilMeasurement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pupil_measurement_params
      params.require(:pupil_measurement).permit(:assessment, :original_mark, :score, :measurement_date, :pupil_id)
    end
end
