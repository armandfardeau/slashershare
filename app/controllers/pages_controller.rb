class PagesController < ApplicationController
  def home
    @offers = Offer.last(3)
  end

  def list
    if params[:tag]
      @offers = Offer.tagged_with(params[:tag])
    else
      @offers = Offer.all
    end
  end

  def search
    @offers = Offer.search(params[:search])
    render 'pages/search', locals: {offers: @offers}
  end
end
