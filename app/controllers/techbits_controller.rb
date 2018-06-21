class TechbitsController < ApplicationController
  before_action :set_techbit, only: [:show, :update, :destroy]

  # GET /techbits
  def index
    @techbits = Techbit.all

    render json: @techbits
  end

  # GET /techbits/1
  def show
    render json: @techbit
  end

  # POST /techbits
  def create
    @techbit = Techbit.new(techbit_params)

    if @techbit.save
      render json: @techbit, status: :created, location: @techbit
    else
      render json: @techbit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /techbits/1
  def update
    if @techbit.update(techbit_params)
      render json: @techbit
    else
      render json: @techbit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /techbits/1
  def destroy
    @techbit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techbit
      @techbit = Techbit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def techbit_params
      params.require(:techbit).permit(:title, :description, :url, :active)
    end
end
