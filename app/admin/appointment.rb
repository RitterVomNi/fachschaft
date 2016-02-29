ActiveAdmin.register Appointment, namespace: :admin , as: "Termine" do
  config.clear_action_items!
  actions :all, :except => [:destroy]
  permit_params :content

  menu priority: 3, label: "Termine"

  action_item only: :show do
    link_to 'Zurück', :back
  end

  index do
    selectable_column
    id_column
    column "Inhalt", :content
    column "Bezeichnung", :title
    actions
  end

  form do |f|
    f.inputs "Termindetails" do
      f.text_field :content
      f.actions
    end
  end

  filter :title, label: "Bezeichnung"
  filter :content, label: "Inhalt"
end