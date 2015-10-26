json.array!(@enfants) do |enfant|
  json.extract! enfant, :id, :nom, :prenom, :date_de_naissance
  json.url enfant_url(enfant, format: :json)
end
