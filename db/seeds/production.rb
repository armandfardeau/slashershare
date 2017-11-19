admin_email = ENV['ADMIN_EMAIL']
admin_password = ENV['ADMIN_PASSWORD']

if Rails.env.production?
  AdminUser.create!(email: admin_email, password: admin_password, password_confirmation: admin_password)
end
