class BuyersController < ApplicationController

  # GET /buyers
  # GET /buyers.json
  def index
    render json: Buyer.all
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_params
      params.require(:buyer).permit(:avatar, :name, :quantity, :city, :country, :shipped)
    end
end

