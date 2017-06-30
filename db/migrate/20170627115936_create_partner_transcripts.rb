class CreatePartnerTranscripts < ActiveRecord::Migration[5.1]
  def change
    create_table :partner_transcripts do |t|
      t.string :name
      t.string :transaction_type
      t.text :description
      t.integer :credit
      t.integer :debit

      t.timestamps
    end
  end
end
