class PublicacionesController < ApplicationController
  before_action :set_publicacione, only: %i[ show edit update destroy ]
  before_action :set_usuario, only: %i[ new edit create destroy update]

  # GET /publicaciones or /publicaciones.json
  def index
    @publicaciones = Publicacione.all
  end

  # GET /publicaciones/1 or /publicaciones/1.json
  def show
  end

  # GET /publicaciones/new
  def new
    @publicacione = Publicacione.new
  end

  # GET /publicaciones/1/edit
  def edit
  end

  # POST /publicaciones or /publicaciones.json
  def create
    @publicacione = Publicacione.new(publicacione_params)

    respond_to do |format|
      if @publicacione.save
        format.html { redirect_to publicacione_url(@publicacione), notice: "Publicacione was successfully created." }
        format.json { render :show, status: :created, location: @publicacione }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publicacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicaciones/1 or /publicaciones/1.json
  def update
    respond_to do |format|
      if @publicacione.update(publicacione_params)
        format.html { redirect_to publicacione_url(@publicacione), notice: "Publicacione was successfully updated." }
        format.json { render :show, status: :ok, location: @publicacione }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publicacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicaciones/1 or /publicaciones/1.json
  def destroy
    @publicacione.destroy

    respond_to do |format|
      format.html { redirect_to publicaciones_url, notice: "Publicacione was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacione
      @publicacione = Publicacione.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def publicacione_params
      params.require(:publicacione).permit(:titulo, :descripcion)
    end
end
