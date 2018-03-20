module UsersHelper
  def nice_offers_list(user = @user)
    return unless user.offers
    render partial: 'users/partials/offers_list', locals: {user: user}
  end

  def user_profile_type(user = @user)
    user.enterprise ? 'enterprise' : 'slasher'
  end
end
