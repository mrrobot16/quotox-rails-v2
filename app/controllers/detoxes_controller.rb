class DetoxesController < ApplicationController
  before_action :set_detox, only: [:show, :update, :destroy]

  # GET /detoxes
  def index
    @detoxes = Detox.all

    render json: @detoxes
  end

  # GET /detoxes/1
  def show
    render json: @detox
  end

  # POST /detoxes
  def create
    @detox = Detox.new(detox_params)

    if @detox.save
      render json: @detox, status: :created, location: @detox
    else
      render json: @detox.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /detoxes/1
  def update
    if @detox.update(detox_params)
      render json: @detox
    else
      render json: @detox.errors, status: :unprocessable_entity
    end
  end

  # DELETE /detoxes/1
  def destroy
    @detox.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detox
      @detox = Detox.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def detox_params
      params.require(:detox).permit(:drug_name, :last_time)
    end
end
