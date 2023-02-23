class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "admin", password: "Kristen15", except: [ :new, :create ]

  layout 'form' 

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all

     @votecount = Vote&.count

     @vote1 = Vote.where(a1: "Lip Gloss - Toner").count
     @vote2 = Vote.where(a1: "Ocean Avenue -  Cardio").count
     @vote3 = Vote.where(a1: "Wherever you go - Barre").count
     @vote4 = Vote.where(a1: "I Believe in a thing called Love - Cardio Push").count
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes 
  # POST /votes.json
  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to pages_vote_counted_path, notice: 'Vote submitted.' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:a1, :a2, :a3, :a4, :a5)
    end
end
