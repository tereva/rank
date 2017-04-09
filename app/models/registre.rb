class Registre < ApplicationRecord
	belongs_to :site
	belongs_to :requete
	validates :site_id, presence: true
	validates :requete_id, presence: true
	validates :site_id, presence: true, uniqueness: { :scope => :requete_id }
end
