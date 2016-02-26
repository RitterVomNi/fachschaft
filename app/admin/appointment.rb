ActiveAdmin.register Appointment, as: "Termine" do
  actions :all, :except => [:destroy]
  permit_params :content

  menu priority: 2, label: "Termine"

  action_item only: :show do
    link_to 'Zurück', admin_appointments_path
  end

  index do
    selectable_column
    id_column
    column "Inhalt", :content
    column "Bezeichnung", :title
    actions
  end
end