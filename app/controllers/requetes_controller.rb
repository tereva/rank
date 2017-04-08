class RequetesController < ApplicationController
  before_action :set_requete, only: [:show, :edit, :update, :destroy]

  # GET /requetes
  # GET /requetes.json
  def index
    @requetes = Requete.all
  end

  # GET /requetes/1
  # GET /requetes/1.json
  def show
  end

  # GET /requetes/new
  def new
    @requete = Requete.new
  end

  # GET /requetes/1/edit
  def edit
  end

  # POST /requetes
  # POST /requetes.json
  def create
    @requete = Requete.new(requete_params)

    respond_to do |format|
      if @requete.save
        format.html { redirect_to @requete, notice: 'Requete was successfully created.' }
        format.json { render :show, status: :created, location: @requete }
      else
        format.html { render :new }
        format.json { render json: @requete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requetes/1
  # PATCH/PUT /requetes/1.json
  def update
    respond_to do |format|
      if @requete.update(requete_params)
        format.html { redirect_to @requete, notice: 'Requete was successfully updated.' }
        format.json { render :show, status: :ok, location: @requete }
      else
        format.html { render :edit }
        format.json { render json: @requete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requetes/1
  # DELETE /requetes/1.json
  def destroy
    @requete.destroy
    respond_to do |format|
      format.html { redirect_to requetes_url, notice: 'Requete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requete
      @requete = Requete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requete_params
      params.require(:requete).permit(:nom)
    end
end
