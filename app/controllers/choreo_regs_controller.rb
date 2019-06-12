class ChoreoRegsController < ApplicationController
  before_action :set_choreo_reg, only: [:show, :edit, :update, :destroy]

    http_basic_authenticate_with name: "admin", password: "Kristen15", except: [ :new, :create ]

layout 'form'

  # GET /choreo_regs
  # GET /choreo_regs.json
  def index
    @choreo_regs = ChoreoReg.all

     @choreo_reg = ChoreoReg.new

       @count= ChoreoReg.all.count
  end

  # GET /choreo_regs/1
  # GET /choreo_regs/1.json
  def show
  end

  # GET /choreo_regs/new
  def new
    @choreo_reg = ChoreoReg.new
  end

  # GET /choreo_regs/1/edit
  def edit
  end

  # POST /choreo_regs
  # POST /choreo_regs.json
  def create
    @choreo_reg = ChoreoReg.new(choreo_reg_params)

    respond_to do |format|
      if @choreo_reg.save
        format.html { redirect_to choreo_regs_path, notice: 'Choreography registration was successfully submitted.' }
        format.json { render :show, status: :created, location: @choreo_reg }
      else
        format.html { render :new }
        format.json { render json: @choreo_reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choreo_regs/1
  # PATCH/PUT /choreo_regs/1.json
  def update
    respond_to do |format|
      if @choreo_reg.update(choreo_reg_params)
        format.html { redirect_to @choreo_reg, notice: 'Choreo registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @choreo_reg }
      else
        format.html { render :edit }
        format.json { render json: @choreo_reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choreo_regs/1
  # DELETE /choreo_regs/1.json
  def destroy
    @choreo_reg.destroy
    respond_to do |format|
      format.html { redirect_to choreo_regs_url, notice: 'Choreography registration was successfully delted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choreo_reg
      @choreo_reg = ChoreoReg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choreo_reg_params
      params.require(:choreo_reg).permit(:song, :names, :email, :phone, :other)
    end
end
