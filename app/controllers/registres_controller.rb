class RegistresController < ApplicationController

	before_action :authorize
	
	def create
		@site = Site.find(params[:site_id])
		@registre = @site.registres.new(registre_params)	
		if @registre.save
        	redirect_to site_path(@site), notice: 'Requete ajoutée.'
        else
           redirect_to site_path(@site), notice: 'Requete existante.'
        end
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
