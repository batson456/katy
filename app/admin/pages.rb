ActiveAdmin.register Page do
  form do |f|
    f.inputs "Details" do
      f.input :name
    end
    f.inputs "Content" do
      f.input :content, :input_html => {:class => "ckeditor"}
      f.input :sidebar, :input_html => {:class => "ckeditor"}
    end
    f.buttons
  end
end
