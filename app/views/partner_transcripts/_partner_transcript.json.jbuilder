json.extract! partner_transcript, :id, :name, :transaction_type, :description, :credit, :debit, :created_at, :updated_at
json.url partner_transcript_url(partner_transcript, format: :json)
