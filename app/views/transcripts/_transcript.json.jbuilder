json.extract! transcript, :id, :transaction_type, :description, :credit, :debit, :created_at, :updated_at
json.url transcript_url(transcript, format: :json)
