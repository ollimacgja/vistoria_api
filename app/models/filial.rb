class Filial < ActiveRecord::Base
  has_many :filial_formularios
  has_many :formularios, through: :filial_formularios
end
