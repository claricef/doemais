class DoadoresController < ApplicationController
  before_action :set_doador, only: [:show, :edit, :update, :destroy]

  # GET /doadores
  # GET /doadores.json
  def index
    @doadores = Doador.all
  end

  # GET /doadores/1
  # GET /doadores/1.json
  def show
  end

  # GET /doadores/new
  def new
    @doador = Doador.new
  end

  # GET /doadores/1/edit
  def edit
  end

  # POST /doadores
  # POST /doadores.json
  def create
    @doador = Doador.new(doador_params)

    respond_to do |format|
      if @doador.save
        format.html { redirect_to @doador, notice: 'Doador adcionado!.' }
        format.json { render :show, status: :created, location: @doador }
      else
        format.html { render :new }
        format.json { render json: @doador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doadores/1
  # PATCH/PUT /doadores/1.json
  def update
    respond_to do |format|
      if @doador.update(doador_params)
        format.html { redirect_to @doador, notice: 'Doador atualizado!.' }
        format.json { render :show, status: :ok, location: @doador }
      else
        format.html { render :edit }
        format.json { render json: @doador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doadores/1
  # DELETE /doadores/1.json
  def destroy
    @doador.destroy
    respond_to do |format|
      format.html { redirect_to doadores_url, notice: 'Doador apagado!.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doador
      @doador = Doador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doador_params
      params.require(:doador).permit(:endereco, :numero, :bairro, :cidade, :uf, :cep, :email, :telefone)
    end
end
