class Formulario < ActiveRecord::Base
  has_many :filial_formularios
  has_many :filials, through: :filial_formularios

  has_many :formulario_fields
  has_many :formulario_ps
  accepts_nested_attributes_for :formulario_fields, allow_destroy: true, :reject_if => lambda { |a| a[:label].blank? }
end
