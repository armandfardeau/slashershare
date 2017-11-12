ActiveAdmin.register_page 'Dashboard' do

  menu priority: 1, label: proc {I18n.t('active_admin.dashboard')}

  content title: proc {I18n.t('active_admin.dashboard')} do
    columns do
      column do
        panel 'Recent Users' do
          ul do
            User.last(5).map do |user|
              li link_to(user.username, admin_users_path(user))
            end
          end
        end
      end
      column do
        panel 'Recent Users' do
          ul do
            User.last(5).map do |user|
              li link_to(user.username, admin_users_path(user))
            end
          end
        end
      end
    end

    columns do
      column do
        div do
          br
          text_node %{<iframe src='https://rpm.newrelic.com/public/charts/6VooNO2hKWB'
                              width='500' height='300' scrolling='no' frameborder='no'>
                      </iframe>}.html_safe
        end
      end
    end
  end
end