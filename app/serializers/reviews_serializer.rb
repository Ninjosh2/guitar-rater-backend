class ReviewsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comments, :user_id, :guitar_id
end
