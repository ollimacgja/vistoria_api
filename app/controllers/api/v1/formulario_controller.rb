class Api::V1::FormularioController < Api::V1::BaseController

  before_action :authenticate_user, :find_form, :set_fields

  def create
    @fields.each do |params_field|
      form_field = FormularioField.find(params_field[:id])

      filled_form = FormularioP.new(user: @user, formulario: @form, formulario_field: form_field)
      if form_field.file_field?
        filled_form.file = params_field[:valor]
      else
        filled_form.valor = params_field[:valor]
      end

      filled_form.save!
    end

    render json: 'Formulário preenchido com sucesso'

  end

  private

  def formulario_params
    params.permit(:auth_token, :formulario_id, formulario_fields: [:id, :valor])
  end

  def authenticate_user
    @user = User.find_by_auth_token(formulario_params[:auth_token])
    raise ActiveRecord::RecordNotFound, 'Usuário não encontrado' unless @user.present?
  end

  def find_form
    @form = Formulario.find_by_id(formulario_params[:formulario_id])
    raise ActiveRecord::RecordNotFound, 'Formulário não encontrado' unless @form.present?
  end

  def set_fields
    @fields = formulario_params[:formulario_fields]
  end

end