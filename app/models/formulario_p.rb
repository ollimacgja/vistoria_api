class FormularioP < ActiveRecord::Base
  belongs_to :formulario
  belongs_to :formulario_field
  belongs_to :usuario
end
