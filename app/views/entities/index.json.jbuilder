json.array!(@entities) do |entity|
  json.extract! entity, :id, :name, :warehouse_id, :parent_entity_id
  json.url entity_url(entity, format: :json)
end
