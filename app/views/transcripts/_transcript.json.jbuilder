json.extract! transcript, :id, :transaction_type, :description, :amount, :created_at, :updated_at, :select_type
json.url transcript_url(transcript, format: :json)
