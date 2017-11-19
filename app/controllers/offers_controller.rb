class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_offer, only: [:show, :edit, :update]

  def index
    @offers = current_user.offers
  end

  def show
  end

  def new
    @offer = current_user.offers.build
  end

  def create
    @offer = current_user.offers.build(allowed_params)
    if @offer.save
      redirect_to @offer, notice: 'Created offer.'
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update_attributes(params[:offer])
      redirect_to @offer, notice: 'Updated offer.'
    else
      render :edit
    end
  end

  def delete
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def allowed_params
    params.require(:offer).permit(:title, :description, :tag_list, :place)
  end
end
