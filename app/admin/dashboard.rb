ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    panel "Welcome to Admin panel." do
      span do
        "Here you can add locations and attach them to the corresponding sets."
      end
    end
  end # content
end
