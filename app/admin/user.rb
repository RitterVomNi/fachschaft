ActiveAdmin.register User, namespace: :admin do
  config.clear_action_items!
  permit_params :firstName, :lastName, :facebook, :email, :password, :password_confirmation, :team_id, :studiengang,  role_ids: []

  menu priority: 1
  


  index do
    selectable_column
    id_column
    column "Vorname", :firstName
    column "Nachname", :lastName
    column :email
    column :studiengang
    column "Letzter Login", :last_sign_in_at
    column "Anzahl Anmeldungen", :sign_in_count
    column "Erstellt am", :created_at
    column :team do |x|
      if Team.find_by(id: x.team_id).nil?
        else
      Team.find_by(id: x.team_id).teamName
        end
    end
    column "Rolle", :roles do |r|
      r.roles.map { |role| role.name }.join(", ")
    end
    actions
  end

  filter :firstName, label: "Vorname"
  filter :lastName, label: "Nachname"
  filter :roles, label: "Rolle"
  filter :team, collection: proc { Team.all.pluck(:teamName, :id) }
  filter :email
  filter :studiengang
  filter :last_sign_in_at, label: "Letzter Login"
  filter :created_at, label: "Erstellt am"

 # form partial: "aaform"
  form do |f|
    f.inputs "Admin Details" do
      render partial: "aaform"
      f.actions
    end
  end

  action_item only: :show do
    link_to 'Zurück', admin_users_path
  end


  show do
    attributes_table do
      default_attribute_table_rows.each do |field|
        if field == :team_id
          row field do |f|
            Team.find_by(id: f.team_id).teamName rescue "Kein Team"
          end
          else
        end

      end
      row :roles do |r|
        r.roles.map { |role| role.name }.join(", ")
      end
      active_admin_comments
    end

end
end
