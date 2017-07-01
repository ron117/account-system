json.extract! transcript, :id, :transaction_type, :description, :amount, :created_at, :updated_at
json.url transcript_url(transcript, format: :json)
