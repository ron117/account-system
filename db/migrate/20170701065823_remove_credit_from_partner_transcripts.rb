class RemoveCreditFromPartnerTranscripts < ActiveRecord::Migration[5.1]
  def change
    remove_column :partner_transcripts, :credit, :integer
  end
end
