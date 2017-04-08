class Requete < ApplicationRecord
	has_many :registres, foreign_key: "requete_id", dependent: :destroy
	has_many :sites, :through => :registres
end


