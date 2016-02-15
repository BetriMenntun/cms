class StudentRegistrationsController < ApplicationController
  before_action :set_student_registration, only: [:show, :edit, :update, :destroy]

  # GET /student_registrations
  # GET /student_registrations.json
  def index
    @student_registrations = StudentRegistration.all
  end

  # GET /student_registrations/1
  # GET /student_registrations/1.json
  def show
  end

  # GET /student_registrations/new
  def new
    @student_registration = StudentRegistration.new
  end

  # GET /student_registrations/1/edit
  def edit
  end

  # POST /student_registrations
  # POST /student_registrations.json
  def create
    @student_registration = StudentRegistration.new(student_registration_params)

    respond_to do |format|
      if @student_registration.save
        format.html { redirect_to @student_registration, notice: 'Student registration was successfully created.' }
        format.json { render :show, status: :created, location: @student_registration }
      else
        format.html { render :new }
        format.json { render json: @student_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_registrations/1
  # PATCH/PUT /student_registrations/1.json
  def update
    respond_to do |format|
      if @student_registration.update(student_registration_params)
        format.html { redirect_to @student_registration, notice: 'Student registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_registration }
      else
        format.html { render :edit }
        format.json { render json: @student_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_registrations/1
  # DELETE /student_registrations/1.json
  def destroy
    @student_registration.destroy
    respond_to do |format|
      format.html { redirect_to student_registrations_url, notice: 'Student registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_registration
      @student_registration = StudentRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_registration_params
      params.require(:student_registration).permit(:user_id, :seminar_id)
    end
end
