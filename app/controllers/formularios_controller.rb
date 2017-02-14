class FormulariosController < ApplicationController
  before_action :set_formulario, only: [:show, :edit, :update, :destroy, :detalhe]

  def form_enviado
    @form = FormularioP.where " formulario_id=?", params[:id]

    # +"<option value='1'>FOTO</option>"
    # +"<option value='2'>VÍDEO</option>"
    # +"<option value='3'>ASSINATURA</option>"
    # +"<option value='4'>COORDENADAS</option>"
    # +"<option value='5'>DATA</option>"
    # +"<option value='6'>DATA HORA</option>"
    # +"<option value='7'>TEXTO</option>"
    # +"<option value='8'>NÚMERO</option>"
    # +"<option value='9'>AUDIO</option>"
    # +"<option value='10'>CHECKBOX</option>"
    # +"<option value='11'>RADIOBOX</option>"
    # +"<option value='12'>ARQUIVO</option>"
    @tipo = ["","Foto","Vídeo","Assinatura","Coordenadas","Data","Data Hora","Texto","Número","Audio","Checkbox","RadioBox","Arquivo"]


  end


  def indexp
    @form = Formulario.joins(:formulario_ps).uniq
  end

  # GET /formularios
  # GET /formularios.json
  def index
    @formularios = Formulario.all
  end

  # GET /formularios/1
  # GET /formularios/1.json
  def show
    @fields = FormularioField.where "formulario_id =?", @formulario.id
  end

  # GET /formularios/new
  def new
    @formulario = Formulario.new
    @formulario_field = FormularioField.new
    @fields = FieldType.all
  end

  # GET /formularios/1/edit
  def edit
  end


  # POST /formularios
  # POST /formularios.json
  def create

    @formulario = Formulario.new(formulario_params.merge({ filial_id: current_user.filial.id }))

    respond_to do |format|
      if @formulario.save
        format.html { redirect_to @formulario, notice: 'Formulario criado com sucesso.' }
        format.json { render :show, status: :created, location: @formulario }
      else
        format.html { render :new }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formularios/1
  # PATCH/PUT /formularios/1.json
  def update

    form = formulario_params

    respond_to do |format|
      if @formulario.update(formulario_params)
        format.html { redirect_to @formulario, notice: 'Formulario atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @formulario }
      else
        format.html { render :edit }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.json
  def destroy
    @formulario.destroy
    respond_to do |format|
      format.html { redirect_to formularios_url, notice: 'Formulario deletado com sucesso.' }
      format.json { head :no_content }
    end
  end
  def detalhe
    @campos = FormularioField.where "formulario_id = ?", @formulario.id
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario
      @formulario = Formulario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulario_params

     params.require(:formulario).permit(:nome, formulario_fields_attributes: [:id, :label, :field_type_id, :options, :requirido, :_destroy])

      # if params[:tipo] != nil
      # [params.require(:formulario).permit(:nome),
      #  params.require(:tipo).permit!,
      #  params.require(:label).permit!,
      #  params.require(:rec).permit!]
      # else
      #   [params.require(:formulario).permit(:nome),nil,nil,nil]
      # end

    end
end
