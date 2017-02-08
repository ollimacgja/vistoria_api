class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :nousuario

  def nousuario
    if @usuario == nil
      redirect_to root_path
    end
  end
  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
    @filial = Filial.all
    muser = User.all
    musuarios = Usuario.all
    w=0
    @users = Array.new
    for u in musuarios
      jata=true
      for i in muser
        if i.id == u.user_id
          jata=false
          break
        end
      end
      if jata
        @users[w]=i
        w+=1
      end

    end


  end

  # GET /usuarios/1/edit
  def edit
    @filial = Filial.all
    muser = User.all
    musuarios = Usuario.all
    w=0
    @users = Array.new
    for u in musuarios
      jata=true
      for i in muser
        if i.id == u.user_id
          jata=false
          break
        end
      end
      if jata
        @users[w]=i
        w+=1
      end

    end
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario criado com sucesso.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nome, :user_id, :filial_id, :tipo)
    end
end
