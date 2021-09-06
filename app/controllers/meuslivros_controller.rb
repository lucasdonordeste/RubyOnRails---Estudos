class MeuslivrosController < ApplicationController
  before_action :set_meuslivro, only: %i[ show edit update destroy ]

  # GET /meuslivros or /meuslivros.json
  def index
    @meuslivros = Meuslivro.all
  end

  # GET /meuslivros/1 or /meuslivros/1.json
  def show
  end

  # GET /meuslivros/new
  def new
    @meuslivro = Meuslivro.new
  end

  # GET /meuslivros/1/edit
  def edit
  end

  # POST /meuslivros or /meuslivros.json
  def create
    @meuslivro = Meuslivro.new(meuslivro_params)

    respond_to do |format|
      if @meuslivro.save
        format.html { redirect_to @meuslivro, notice: "Livro adicionado com sucesso." }
        format.json { render :show, status: :created, location: @meuslivro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meuslivro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meuslivros/1 or /meuslivros/1.json
  def update
    respond_to do |format|
      if @meuslivro.update(meuslivro_params)
        format.html { redirect_to @meuslivro, notice: "Livro atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @meuslivro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meuslivro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meuslivros/1 or /meuslivros/1.json
  def destroy
    @meuslivro.destroy
    respond_to do |format|
      format.html { redirect_to meuslivros_url, notice: "Livro apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meuslivro
      @meuslivro = Meuslivro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meuslivro_params
      params.require(:meuslivro).permit(:nomedolivro, :resumo, :datadeinicio, :datedetermino)
    end
end
