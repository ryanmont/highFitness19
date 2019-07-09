class GurusController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "Kristen15", except: [ :new, :create ]

  
  before_action :set_guru, only: [:show, :edit, :update, :destroy]

  # GET /gurus
  # GET /gurus.json
  def index
    @gurus = Guru.all
  end

  # GET /gurus/1
  # GET /gurus/1.json
  def show
  end

  # GET /gurus/new
  def new
    @guru = Guru.new
  end

  # GET /gurus/1/edit
  def edit
  end

  # POST /gurus
  # POST /gurus.json
  def create
    @guru = Guru.new(guru_params)

    respond_to do |format|
      if @guru.save
        format.html { redirect_to pages_vote_counted_path, notice: 'Survey successfully submitted' }
        format.json { render :show, status: :created, location: @guru }
      else
        format.html { render :new }
        format.json { render json: @guru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gurus/1
  # PATCH/PUT /gurus/1.json
  def update
    respond_to do |format|
      if @guru.update(guru_params)
        format.html { redirect_to @guru, notice: 'Guru was successfully updated.' }
        format.json { render :show, status: :ok, location: @guru }
      else
        format.html { render :edit }
        format.json { render json: @guru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gurus/1
  # DELETE /gurus/1.json
  def destroy
    @guru.destroy
    respond_to do |format|
      format.html { redirect_to gurus_url, notice: 'Guru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guru
      @guru = Guru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guru_params
      params.require(:guru).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9)
    end
end
