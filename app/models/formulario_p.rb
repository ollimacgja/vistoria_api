class FormularioP < ActiveRecord::Base

  has_many :answers
  # belongs_to :formulario_field
  belongs_to :formulario
  belongs_to :user
end
