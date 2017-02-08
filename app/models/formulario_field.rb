class FormularioField < ActiveRecord::Base

  belongs_to :field_type
  belongs_to :formulario

end
