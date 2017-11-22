module ApplicationHelper
  def nice_display_of_user_options(user)
    if user_signed_in?
      render 'layouts/partials/profile_options', locals: {current_user: user}
    else
      render 'layouts/partials/sign_in_up'
    end
  end

  def avatar_url(user = current_user, size = :thumb)
    if !user.avatar?
      'default_profil_picture.svg'
    else
      user.avatar.url(size)
    end
end
