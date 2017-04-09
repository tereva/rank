class Requete < ApplicationRecord
	
	validates :nom, presence: true, uniqueness: true

	has_many :registres, foreign_key: "requete_id", dependent: :destroy
	has_many :sites, :through => :registres
end


