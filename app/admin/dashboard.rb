ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc {I18n.t('active_admin.dashboard')}

  content title: proc {I18n.t('active_admin.dashboard')} do
    columns do
      column do
        panel 'Recent users' do
          ul do
            User.last(5).map do |user|
              li link_to(user.username, admin_users_path(user))
            end
          end
        end
      end
      column do
        panel 'Recent offers' do
          ul do
            Offer.last(5).map do |offer|
              li link_to(offer.title, admin_offer_path(offer))
            end
          end
        end
      end
    end
  end
end
