module PagesHelper
  def nice_display_of_search_result(offers)
    if offers
      render partial: 'pages/partials/search_offers', locals: {offers: offers}
    else
      render partial: 'pages/partials/empty_search_offers', locals: {offers: offers}
    end
  end
end
