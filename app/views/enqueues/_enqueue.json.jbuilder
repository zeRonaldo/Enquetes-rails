json.extract! enqueue, :id, :title, :text, :type, :category, :user_id, :created_at, :updated_at
json.url enqueue_url(enqueue, format: :json)
