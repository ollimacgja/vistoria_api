class Answer < ActiveRecord::Base
  mount_base64_uploader :file, FileUploader

  belongs_to :formulario_field
  belongs_to :formulario_p
end
