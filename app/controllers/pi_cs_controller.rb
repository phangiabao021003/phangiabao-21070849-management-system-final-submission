class PiCsController < ApplicationController
  before_action :set_pi_c, only: %i[ show edit update destroy ]

  # GET /pi_cs or /pi_cs.json
  def index
    @pi_cs = PiC.all
  end

  # GET /pi_cs/1 or /pi_cs/1.json
  def show
  end

  # GET /pi_cs/new
  def new
    @pi_c = PiC.new
  end

  # GET /pi_cs/1/edit
  def edit
  end

  # POST /pi_cs or /pi_cs.json
  def create
    @pi_c = PiC.new(pi_c_params)

    respond_to do |format|
      if @pi_c.save
        format.html { redirect_to pi_c_url(@pi_c), notice: "Pi c was successfully created." }
        format.json { render :show, status: :created, location: @pi_c }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pi_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pi_cs/1 or /pi_cs/1.json
  def update
    respond_to do |format|
      if @pi_c.update(pi_c_params)
        format.html { redirect_to pi_c_url(@pi_c), notice: "Pi c was successfully updated." }
        format.json { render :show, status: :ok, location: @pi_c }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pi_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pi_cs/1 or /pi_cs/1.json
  def destroy
    @pi_c.destroy

    respond_to do |format|
      format.html { redirect_to pi_cs_url, notice: "Pi c was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pi_c
      @pi_c = PiC.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pi_c_params
      params.require(:pi_c).permit(:Staffname, :StaffID, :StaffPhone, :DateTransaction, :ClientName, :ClientID_id)
    end
end
