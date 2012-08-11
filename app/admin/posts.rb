ActiveAdmin.register Post do
  form do |f|
      f.inputs "Details" do
        f.input :title
        f.input :image, :as => :file, :label => "Main Image"
      end
      f.inputs "Content" do
        f.input :content, :input_html => {:class => "ckeditor"}
      end
      f.buttons
    end
end
