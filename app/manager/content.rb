ActiveAdmin.register Content, namespace: :manager  do
    permit_params :content, :ok_manager, :title
    menu priority: 1, label: "Inhalte"


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
            f.inputs "Inhalt" do
                f.text_area :content
            end
            f.actions
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
                if field == :team_id && :team_id != nil
                    row field do |f|
                        Team.find_by(id: f.team_id).teamName
                    end
                end
                row field
            end
            active_admin_comments
        end



end
    end