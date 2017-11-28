module ApplicationHelper
  def nice_display_of_user_options(user = current_user)
    if user_signed_in?
      render partial: 'layouts/partials/profile_options', locals: {current_user: user}
    else
      render partial: 'layouts/partials/sign_in_up'
    end
  end

  def nice_display_of_offer_options(user = current_user)
    return unless user_signed_in?
    return unless user.enterprise
    render partial: 'layouts/partials/offer_options', locals: {current_user: user}
  end

  def avatar_url(user = current_user, size = :thumb)
    if !user.avatar?
      'default_profil_picture.svg'
    else
      user.avatar.url(size)
    end
  end

  def nice_display_of_tag_list(offer = @offer)
    return unless offer.tag_list
    render partial: 'partials/tag_list', locals: {offer: offer}
  end
end
