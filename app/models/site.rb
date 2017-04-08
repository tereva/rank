class Site < ApplicationRecord
	has_many :registres, foreign_key: "site_id", dependent: :destroy
	has_many :requetes, :through => :registres
end
