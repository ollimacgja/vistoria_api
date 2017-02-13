class FormularioField < ActiveRecord::Base
  belongs_to :field_type
  belongs_to :formulario

  def file_field?
    %w[Foto Vídeo Assinatura Audio Arquivo].include? field_type.nome
  end

end
