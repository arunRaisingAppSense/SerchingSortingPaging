json.extract! comment, :id, :title, :comments, :project_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)