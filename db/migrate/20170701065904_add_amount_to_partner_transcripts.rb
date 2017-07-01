class AddAmountToPartnerTranscripts < ActiveRecord::Migration[5.1]
  def change
    add_column :partner_transcripts, :amount, :float
  end
end
