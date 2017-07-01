class RemoveDebitFromPartnerTranscripts < ActiveRecord::Migration[5.1]
  def change
    remove_column :partner_transcripts, :debit, :integer
  end
end
