class Formulario < ActiveRecord::Base
  belongs_to :filial

  has_many :formulario_fields
  has_many :formulario_ps
end
