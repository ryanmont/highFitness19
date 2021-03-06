class TablesController < ApplicationController
  before_action :set_table, only: [:show, :edit, :update, :destroy, :faq]


  http_basic_authenticate_with name: "admin", password: "Kristen15", except: [:new, :congrats, :create]


def congrats
end

  # GET /tables
  # GET /tables.json
  def index

   
      @tables = Table.all
      respond_to do |format|
        format.html
        format.csv{ send_data @tables.to_csv }
        format.xls{ send_data @tables.to_csv(col_sep: "\t") }
      
    end


  end

  # GET /tables/1
  # GET /tables/1.json
  def show
  end

  # GET /tables/new
  def new
    @table = Table.new
  end

  # GET /tables/1/edit
  def edit
  end

  # POST /tables
  # POST /tables.json 
  def create
    @table = Table.new(table_params)

    respond_to do |format|
      if @table.save
        NotifyMailer.notify_kristen(@table).deliver
        format.html { redirect_to tables_congrats_path, notice: "CONGRATULATIONS! You've successfully completed registration." }
      
      else
        format.html { render :new }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tables/1
  # PATCH/PUT /tables/1.json
  def update
    respond_to do |format|
      if @table.update(table_params)
        format.html { redirect_to @table, notice: 'Registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @table }
      else
        format.html { render :edit }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tables/1
  # DELETE /tables/1.json
  def destroy
    @table.destroy
    respond_to do |format|
      format.html { redirect_to tables_url, notice: 'Registration was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table
      @table = Table.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_params
      params.require(:table).permit(:company, :passport_id, :first_name, :middle_name, :last_name, :date_of_birth, :street_address, :city, :state, :zip_code, :mobile_phone, :email, :preferred_airline, :frequent_flyer_number, :preferred_flight_date, :preferred_departure_time_period, :preferred_departure_airport_code, :seat_preference, :food_allergies, :number_of_beds_requested, :companion, :medical, :additional_comments, )
    end
end
