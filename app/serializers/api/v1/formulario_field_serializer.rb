class Api::V1::FormularioFieldSerializer < ActiveModel::Serializer
  attributes :id, :label, :field_type_id, :field_type_name, :requirido
  attribute :options, if: :with_options?

  def field_type_name
    object.field_type.nome
  end

  def with_options?
    object.options.present?
  end
end
