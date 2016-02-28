ActiveAdmin.register Team, namespace: :admin do
  actions :all, :except => [:destroy, :create]
  permit_params :user_id

  menu priority: 4, label: "Team-Manager"

  action_item only: :show do
    link_to 'Zurück', admin_teams_path
  end

  index do
    selectable_column
    id_column
    column :teamName
    column "Manager", :user_id do |f|
      if User.find_by(id: f.user_id).nil?
      else
        User.find(f.user_id).fullname
      end
    end
    actions
  end

  form do |f|
    f.inputs "Team" do
      f.input :teamName
      f.input :user_id, as: :select, multiple: false, collection: User.all.collect {|user|[user.email, user.id]}, label: "Manager"
      f.actions
    end
  end

  filter :teamName
end