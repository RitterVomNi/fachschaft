ActiveAdmin.register Content,  namespace: :admin do
  config.clear_action_items!
  permit_params :content, :ok_manager, :ok_admin, :title, :user_id, :team_id

    menu priority: 2


  action_item only: :show do
    link_to 'Zurück', admin_contents_path
  end

  index do
      selectable_column
      id_column
      column "Titel", :title
      column "Inhalt", :content
      column "Erstellt am", :created_at
      column "Letztes Update", :updated_at
      column :user_id do |f|
          if User.find_by(id: f.user_id).nil?
          else
              User.find_by(id: f.user_id).fullname
          end
      end
      column :ok_manager
      column :ok_admin
      actions
  end

  form do |f|
      f.inputs "Content" do
          f.input :title, label: "Titel"
          f.input :ok_manager
          f.input :ok_admin
          f.inputs "Inhalt" do
          f.text_area :content

          f.actions
          end

      end
  end


  show do
      attributes_table do
          default_attribute_table_rows.each do |field|
              if field == :user_id
                  row field do |f|
                    User.find_by(id: f.user_id).fullname
                  end
              end
              if field == :team_id
                row field do |f|
                  Team.find_by(id: f.team_id).teamName rescue "Kein Team"
                end
              else
                row field
              end
          end
          active_admin_comments
      end

  end

  filter :title, label: "Titel"
  filter :content, label: "Inhalt"
  filter :ok_admin
  filter :ok_manager

end