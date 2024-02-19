json.extract! book_shelf, :id, :user_id, :book_id, :created_at, :updated_at
json.url book_shelf_url(book_shelf, format: :json)
