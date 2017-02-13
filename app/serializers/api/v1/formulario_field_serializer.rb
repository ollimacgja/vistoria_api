class Api::V1::FormularioFieldSerializer < ActiveModel::Serializer
  attributes :id, :label, :field_type_id, :field_type_name, :requirido

  def field_type_name
    object.field_type.nome
  end
end
