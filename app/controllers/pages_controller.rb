class PagesController < ApplicationController
  def home
    @offers = Offer.all.limit(3)
  end

  def list
    @offers = Offer.all
  end
end
