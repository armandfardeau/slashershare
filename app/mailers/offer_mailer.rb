class OfferMailer < ApplicationMailer
  def new_offer_email(user, offer)
    @user = user
    @offer = offer
    mail(to: @user.email, subject: 'Ypu published a new offer')
  end
end