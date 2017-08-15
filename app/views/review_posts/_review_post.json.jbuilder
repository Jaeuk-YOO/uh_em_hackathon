json.extract! review_post, :id, :title, :content, :created_at, :updated_at
json.url review_post_url(review_post, format: :json)
