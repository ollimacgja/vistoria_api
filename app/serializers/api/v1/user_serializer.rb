class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :nome, :filial_id, :tipo, :auth_token
end
