json.array!(@parents) do |parent|
  json.extract! parent, :id, :nom, :prenom, :adresse, :date_de_naissance
  json.url parent_url(parent, format: :json)
end
