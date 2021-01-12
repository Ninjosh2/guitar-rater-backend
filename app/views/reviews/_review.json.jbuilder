json.extract! review, :id, :comments, :user, :guitar, :created_at, :updated_at
json.url review_url(review, format: :json)
