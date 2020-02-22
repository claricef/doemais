class PessoasjuridicasController < ApplicationController
  before_action :set_pessoajuridica, only: [:show, :edit, :update, :destroy]

  # GET /pessoasjuridicas
  # GET /pessoasjuridicas.json
  def index
    @pessoasjuridicas = Pessoajuridica.all
  end

  # GET /pessoasjuridicas/1
  # GET /pessoasjuridicas/1.json
  def show
  end

  # GET /pessoasjuridicas/new
  def new
    @pessoajuridica = Pessoajuridica.new
  end

  # GET /pessoasjuridicas/1/edit
  def edit
  end

  # POST /pessoasjuridicas
  # POST /pessoasjuridicas.json
  def create
    @pessoajuridica = Pessoajuridica.new(pessoajuridica_params)

    respond_to do |format|
      if @pessoajuridica.save
        format.html { redirect_to @pessoajuridica, notice: 'Pessoajuridica was successfully created.' }
        format.json { render :show, status: :created, location: @pessoajuridica }
      else
        format.html { render :new }
        format.json { render json: @pessoajuridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoasjuridicas/1
  # PATCH/PUT /pessoasjuridicas/1.json
  def update
    respond_to do |format|
      if @pessoajuridica.update(pessoajuridica_params)
        format.html { redirect_to @pessoajuridica, notice: 'Pessoajuridica was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoajuridica }
      else
        format.html { render :edit }
        format.json { render json: @pessoajuridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoasjuridicas/1
  # DELETE /pessoasjuridicas/1.json
  def destroy
    @pessoajuridica.destroy
    respond_to do |format|
      format.html { redirect_to pessoasjuridicas_url, notice: 'Pessoajuridica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoajuridica
      @pessoajuridica = Pessoajuridica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoajuridica_params
      params.require(:pessoajuridica).permit(:cnpj, :nomefantasia, :razaosocial)
    end
end
