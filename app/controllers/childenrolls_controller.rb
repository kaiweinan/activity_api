class ChildenrollsController < ApplicationController
  before_action :set_childenroll, only: [:show, :update, :destroy]

  # GET /childenrolls
  def index
    @childenrolls = Childenroll.all

    render json: ChildenrollSerializer.new(@childenrolls)
  end

  # GET /childenrolls/1
  def show
    @childenroll = Childenroll.find_by(id: params[:id])
    render json: ChildenrollSerializer.new(@childenroll)
  end

  # POST /childenrolls
  def create
    @childenroll = Childenroll.new(childenroll_params)

    if @childenroll.save
      render json: @childenroll, status: :created, location: @childenroll
    else
      render json: @childenroll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /childenrolls/1
  def update
    if @childenroll.update(childenroll_params)
      render json: @childenroll
    else
      render json: @childenroll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /childenrolls/1
  def destroy
    if @childenroll.destroy
      render json: @childenroll
    else
      render json:{errors:["Child could not be destroyed"]}
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_childenroll
      @childenroll = Childenroll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def childenroll_params
      params.require(:childenroll).permit(:name, :activity_id)
    end
end
