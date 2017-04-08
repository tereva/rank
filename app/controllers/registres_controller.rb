class RegistresController < ApplicationController

	def create
		@site = Site.find(params[:site_id])
		@registre = @site.registres.create(registre_params)	
        redirect_to site_path(@site), notice: 'Requete ajoutée.'
	end

    def destroy
		@registre=Registre.find(params[:id])
		@site = @registre.site
		@registre.destroy
		redirect_to site_path(@site), notice: 'Requete enlevée.'
    end


	private

    def registre_params
    	params.require(:registre).permit(:requete_id, :id)
    end
end
