class FormularioP < ActiveRecord::Base
  mount_uploader :file, FileUploader

  belongs_to :formulario
  belongs_to :formulario_field
  belongs_to :user
end
