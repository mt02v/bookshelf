json.extract! book, :id, :title, :price, :R18, :created_at, :updated_at
json.url book_url(book, format: :json)
