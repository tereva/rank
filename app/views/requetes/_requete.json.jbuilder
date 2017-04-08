json.extract! requete, :id, :nom, :created_at, :updated_at
json.url requete_url(requete, format: :json)
