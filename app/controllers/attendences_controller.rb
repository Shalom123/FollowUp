class AttendencesController < ApplicationController
  before_action :set_attendence, only: [:show, :edit, :update, :destroy]

  # GET /attendences
  # GET /attendences.json
  def index
    @attendences = Attendence.all
  end

  # GET /attendences/1
  # GET /attendences/1.json
  def show
  end

  # GET /attendences/new
  def new
    @attendence = Attendence.new
  end

  # GET /attendences/1/edit
  def edit
  end

  # POST /attendences
  # POST /attendences.json
  def create
    @attendence = Attendence.new(attendence_params)

    respond_to do |format|
      if @attendence.save
        format.html { redirect_to @attendence, notice: 'Attendence was successfully created.' }
        format.json { render :show, status: :created, location: @attendence }
      else
        format.html { render :new }
        format.json { render json: @attendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendences/1
  # PATCH/PUT /attendences/1.json
  def update
    respond_to do |format|
      if @attendence.update(attendence_params)
        format.html { redirect_to @attendence, notice: 'Attendence was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendence }
      else
        format.html { render :edit }
        format.json { render json: @attendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendences/1
  # DELETE /attendences/1.json
  def destroy
    @attendence.destroy
    respond_to do |format|
      format.html { redirect_to attendences_url, notice: 'Attendence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendence
      @attendence = Attendence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendence_params
      params.require(:attendence).permit(:lecturer_id, :student_id, :course_id, :room_number)
    end
end
