ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    

section "Recent Questions" do
    table_for Question.order("created_at desc").limit(5) do
        column :id
    column :content
    column :user
    column "Created at", :created_at
    column :category
    column :status

    end
    strong{link_to "View all Questions", admin_questions_path}


end




section "Recent Users" do
    table_for User.order("last_sign_in_at desc").limit(5) do
        column :id
    column :email
    column :post
    column "Created at", :created_at
    column :last_sign_in_at
    

    end
    strong{link_to "View all Users", admin_users_path}

end


section "New Users" do
    table_for User.order("created_at desc").limit(5) do
        column :id
    column :email
    column :post
    column "Created at", :created_at
    column :last_sign_in_at
    

    end
    strong{link_to "View all Users", admin_users_path}

end










    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end


