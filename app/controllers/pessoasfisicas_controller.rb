class PessoasfisicasController < ApplicationController
  before_action :set_pessoafisica, only: [:show, :edit, :update, :destroy]

  # GET /pessoasfisicas
  # GET /pessoasfisicas.json
  def index
    @pessoasfisicas = Pessoafisica.all
  end

  # GET /pessoasfisicas/1
  # GET /pessoasfisicas/1.json
  def show
  end

  # GET /pessoasfisicas/new
  def new
    @pessoafisica = Pessoafisica.new
  end

  # GET /pessoasfisicas/1/edit
  def edit
  end

  # POST /pessoasfisicas
  # POST /pessoasfisicas.json
  def create
    @pessoafisica = Pessoafisica.new(pessoafisica_params)

    respond_to do |format|
      if @pessoafisica.save
        format.html { redirect_to @pessoafisica, notice: 'Pessoafisica was successfully created.' }
        format.json { render :show, status: :created, location: @pessoafisica }
      else
        format.html { render :new }
        format.json { render json: @pessoafisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoasfisicas/1
  # PATCH/PUT /pessoasfisicas/1.json
  def update
    respond_to do |format|
      if @pessoafisica.update(pessoafisica_params)
        format.html { redirect_to @pessoafisica, notice: 'Pessoafisica was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoafisica }
      else
        format.html { render :edit }
        format.json { render json: @pessoafisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoasfisicas/1
  # DELETE /pessoasfisicas/1.json
  def destroy
    @pessoafisica.destroy
    respond_to do |format|
      format.html { redirect_to pessoasfisicas_url, notice: 'Pessoafisica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoafisica
      @pessoafisica = Pessoafisica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoafisica_params
      params.require(:pessoafisica).permit(:nome, :rg, :cpf)
    end
end
