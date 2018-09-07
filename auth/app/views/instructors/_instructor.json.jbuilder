json.extract! instructor, :id, :user, :password, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
