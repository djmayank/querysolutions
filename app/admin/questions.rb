ActiveAdmin.register Question do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :content, :user, :category ,:status
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

scope :unsolved


index do
	column :id
	column :content
	column :user
	column "Created at", :created_at
	column :category
    column :status
    actions
end

end
