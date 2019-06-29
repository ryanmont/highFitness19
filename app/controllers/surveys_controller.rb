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
    #   @total8 = Survey.sum(:a8)
    #   @count8 = Survey.count(:a8) 
    #   @avg8  =  @total8.to_f  / @count8.to_f

    # # Q9
    #   @total9 = Survey.sum(:a9)
    #   @count9 = Survey.count(:a9) 
    #   @avg9  =  @total9.to_f  / @count9.to_f

    # # Q10
    #   @total10 = Survey.sum(:a10)
    #   @count10 = Survey.count(:a10) 
    #   @avg10  =  @total10.to_f  / @count10.to_f

    #  # Q11
    #   @total11 = Survey.sum(:a11)
    #   @count11 = Survey.count(:a11) 
    #   @avg11  =  @total11.to_f  / @count11.to_f

    #  # Q12
    #   @total12 = Survey.sum(:a12)
    #   @count12 = Survey.count(:a12) 
    #   @avg12  =  @total12.to_f  / @count12.to_f

    # # Q13
    #   @total13 = Survey.sum(:a13)
    #   @count13 = Survey.count(:a13) 
    #   @avg13  =  @total13.to_f  / @count13.to_f

    # # Q14
    #   @total14 = Survey.sum(:a14)
    #   @count14 = Survey.count(:a14) 
    #   @avg14  =  @total14.to_f  / @count14.to_f

    # # Q15
    #   @total15 = Survey.sum(:a15)
    #   @count15 = Survey.count(:a15) 
    #   @avg15  =  @total15.to_f  / @count15.to_f

    #  # Q16
    #   @total16 = Survey.sum(:a16)
    #   @count16 = Survey.count(:a16) 
    #   @avg16  =  @total16.to_f  / @count16.to_f

    #  # Q17
    #   @total17 = Survey.sum(:a17)
    #   @count17 = Survey.count(:a17) 
    #   @avg17  =  @total17.to_f  / @count17.to_f

    # # Q18
    #  @total18 = Survey.sum(:a18)
    #  @count18 = Survey.count(:a18) 
    #  @avg18  =  @total18.to_f  / @count18.to_f


    #  # Q19
    #   @total19 = Survey.sum(:a19)
    #   @count19 = Survey.count(:a19) 
    #   @avg19  =  @total19.to_f  / @count19.to_f

    # # Q20
    #  @total20 = Survey.sum(:a20)
    #  @count20 = Survey.count(:a20) 
    #  @avg20  =  @total20.to_f  / @count20.to_f

    #  # Q21
    #   @total21 = Survey.sum(:a21)
    #   @count21 = Survey.count(:a21) 
    #   @avg21  =  @total21.to_f  / @count21.to_f

    # # Q22
    #   @total22 = Survey.sum(:a22)
    #   @count22 = Survey.count(:a22) 
    #   @avg22  =  @total22.to_f  / @count22.to_f


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
