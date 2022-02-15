json.extract! anime, :id, :title, :favorite, :release, :created_at, :updated_at, :follow
json.url anime_url(anime, format: :json)
