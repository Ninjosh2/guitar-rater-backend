class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :edit, :update, :destroy]

  def index
    @guitars = current_user.guitars
    render json: GuitarsSerializer.new(@guitars).serializable_hash[:data].map{|hash| hash[:attributes]}
  end

  def show
    @guitar = set_guitar
    render json: @guitars
  end

  # GET /guitars/new
  def new
    @guitar = Guitar.new
  end

  # GET /guitars/1/edit
  def edit
  end

  # POST /guitars
  # POST /guitars.json
  def create
    @guitar = Guitar.new(guitar_params)

    respond_to do |format|
      if @guitar.save
        format.html { redirect_to @guitar, notice: 'Guitar was successfully created.' }
        format.json { render :show, status: :created, location: @guitar }
      else
        format.html { render :new }
        format.json { render json: @guitar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guitars/1
  # PATCH/PUT /guitars/1.json
  def update
    respond_to do |format|
      if @guitar.update(guitar_params)
        format.html { redirect_to @guitar, notice: 'Guitar was successfully updated.' }
        format.json { render :show, status: :ok, location: @guitar }
      else
        format.html { render :edit }
        format.json { render json: @guitar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guitars/1
  # DELETE /guitars/1.json
  def destroy
    @guitar.destroy
    respond_to do |format|
      format.html { redirect_to guitars_url, notice: 'Guitar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guitar
      @guitar = Guitar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guitar_params
      params.require(:guitar).permit(:description, :name, :url)
    end
end
