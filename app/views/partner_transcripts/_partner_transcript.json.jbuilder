json.extract! partner_transcript, :id, :name, :transaction_type, :description, :amount, :created_at, :updated_at
json.url partner_transcript_url(partner_transcript, format: :json)
