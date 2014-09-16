class AdFormatsController < ApplicationController
  before_action :set_ad_format, only: [:show, :edit, :update, :destroy]

  # GET /ad_formats
  # GET /ad_formats.json
  def index
    @ad_formats = AdFormat.all
  end

  # GET /ad_formats/1
  # GET /ad_formats/1.json
  def show
  end

  # GET /ad_formats/new
  def new
    @ad_format = AdFormat.new
  end

  # GET /ad_formats/1/edit
  def edit
  end

  # POST /ad_formats
  # POST /ad_formats.json
  def create
    @ad_format = AdFormat.new(ad_format_params)

    respond_to do |format|
      if @ad_format.save
        format.html { redirect_to @ad_format, notice: 'Ad format was successfully created.' }
        format.json { render :show, status: :created, location: @ad_format }
      else
        format.html { render :new }
        format.json { render json: @ad_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_formats/1
  # PATCH/PUT /ad_formats/1.json
  def update
    respond_to do |format|
      if @ad_format.update(ad_format_params)
        format.html { redirect_to @ad_format, notice: 'Ad format was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_format }
      else
        format.html { render :edit }
        format.json { render json: @ad_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_formats/1
  # DELETE /ad_formats/1.json
  def destroy
    @ad_format.destroy
    respond_to do |format|
      format.html { redirect_to ad_formats_url, notice: 'Ad format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_format
      @ad_format = AdFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_format_params
      params.require(:ad_format).permit(:name)
    end
end
