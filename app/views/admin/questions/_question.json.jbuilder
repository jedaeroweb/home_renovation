json.extract! question, :id, :title, :enable, :created_at, :updated_at
json.url admin_question_url(question, format: :json)
