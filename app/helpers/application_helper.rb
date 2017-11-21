module ApplicationHelper
  def nice_display_of_user_options(user)
    if user_signed_in?
      render 'layouts/partials/profile_options', locals: {current_user: user}
    else
      render 'layouts/partials/sign_in_up'
    end
  end

  def avatar_url(user)
    if user.avatar
      user.avatar.url
    end
  end
end