class RiverHeightRecordsController < ApplicationController
  before_action :set_river_height_record, only: [:show, :edit, :update, :destroy]

  # GET /river_height_records
  # GET /river_height_records.json
  def index
    @river_height_records = all_or_filter_by_river(params[:river_id])
    @api_result = @river_height_records.group_by {|rh| rh.record_time.to_date}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @api_result }
    end
  end

  # GET /river_height_records/1
  # GET /river_height_records/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @river_height_record }
    end
  end

  # GET /river_height_records/new
  def new
    @river_height_record = RiverHeightRecord.new
  end

  # GET /river_height_records/1/edit
  def edit
  end

  # POST /river_height_records
  # POST /river_height_records.json
  def create
    @river_height_record = RiverHeightRecord.new(river_height_record_params)

    respond_to do |format|
      if @river_height_record.save
        format.html { redirect_to @river_height_record, notice: 'River height record was successfully created.' }
        format.json { render json: @river_height_record, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @river_height_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /river_height_records/1
  # PATCH/PUT /river_height_records/1.json
  def update
    respond_to do |format|
      if @river_height_record.update(river_height_record_params)
        format.html { redirect_to @river_height_record, notice: 'River height record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @river_height_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /river_height_records/1
  # DELETE /river_height_records/1.json
  def destroy
    @river_height_record.destroy
    respond_to do |format|
      format.html { redirect_to river_height_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_river_height_record
      @river_height_record = RiverHeightRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def river_height_record_params
      params.require(:river_height_record).permit(:city_id, :river_id, :record_time, :description, :feet_above, :prediction)
    end

    def all_or_filter_by_river(river_id)
      if params[:river_id] then
        RiverHeightRecord.where(river_id: params[:river_id])
      else
        RiverHeightRecord.all
      end
    end
end
