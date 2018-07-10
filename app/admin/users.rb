ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
  permit_params :id, :email, :post, :last_sign_in_at
#
# or
#
# permit_params do
#  permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
scope :solvers
index do
	column :id
	column :email
	column :post
	column "Created at", :created_at
	column :last_sign_in_at
    
    actions
end



end
