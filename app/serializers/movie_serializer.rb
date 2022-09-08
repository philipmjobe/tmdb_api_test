class MovieSerializer < ActiveModel::Serializer
  attributes :id, :original_title, :overview, :poster_path, :tagline
end
