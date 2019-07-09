class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  # GET /surveys
  # GET /surveys.json
  def index
      @surveys = Survey.all

    # Q7
      @total7 = Survey.sum(:a7)
      @count7 = Survey.count(:a7) 
      @avg7  =  @total7.to_f  / @count7.to_f



# Q8

    @count8 = Survey.count(:a8)
    @yes8 = Survey.where(a8: "YES").count
    @no8 = Survey.where(a8: "NO").count
    @avgyes8 =  @yes8.to_f  / @count8.to_f
    @avgyes8 =  @no8.to_f  / @count8.to_f




  # Q10
      @total10 = Survey.sum(:a10)
      @count10 = Survey.count(:a10) 
      @avg10  =  @total10.to_f  / @count10.to_f



    # Q13
      @total13 = Survey.sum(:a13)
      @count13 = Survey.count(:a13) 
      @avg13  =  @total13.to_f  / @count13.to_f



     # Q16
      @total16 = Survey.sum(:a16)
      @count16 = Survey.count(:a16) 
      @avg16  =  @total16.to_f  / @count16.to_f




     # Q19
      @total19 = Survey.sum(:a19)
      @count19 = Survey.count(:a19) 
      @avg19  =  @total19.to_f  / @count19.to_f

 

    # Q22
      @total22 = Survey.sum(:a22)
      @count22 = Survey.count(:a22) 
      @avg22  =  @total22.to_f  / @count22.to_f





    # Q25
      @total25 = Survey.sum(:a25)
      @count25 = Survey.count(:a25) 
      @avg25  =  @total25.to_f  / @count25.to_f



    # Q28
      @total28 = Survey.sum(:a28)
      @count28 = Survey.count(:a28) 
      @avg28  =  @total28.to_f  / @count28.to_f


    # Q31
      @total31 = Survey.sum(:a31)
      @count31 = Survey.count(:a31) 
      @avg31  =  @total31.to_f  / @count31.to_f


    # Q34
      @total34 = Survey.sum(:a34)
      @count34 = Survey.count(:a34) 
      @avg34  =  @total34.to_f  / @count34.to_f


    # Q54
      @total54 = Survey.sum(:a54)
      @count54 = Survey.count(:a54) 
      @avg54  =  @total54.to_f  / @count54.to_f


    # Q37
      @total37 = Survey.sum(:a37)
      @count37 = Survey.count(:a37) 
      @avg37  =  @total37.to_f  / @count37.to_f



    # Q40
      @total40 = Survey.sum(:a40)
      @count40 = Survey.count(:a40) 
      @avg40  =  @total40.to_f  / @count40.to_f



    # Q43
      @total43 = Survey.sum(:a43)
      @count43 = Survey.count(:a43) 
      @avg43  =  @total43.to_f  / @count43.to_f


      # Q46
      @total46 = Survey.sum(:a46)
      @count46 = Survey.count(:a46) 
      @avg46  =  @total46.to_f  / @count46.to_f

  

     

  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to pages_vote_counted_path, notice: 'Survey submitted.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27, :a28, :a29, :a30, :a31, :a32, :a33, :a34, :a35, :a36, :a37, :a38, :a39, :a40, :a41, :a42, :a43, :a44, :a45, :a46, :a47, :a48, :a49, :a50, :a51, :a52, :a53, :a54, :a55, :a56)
    end
end
