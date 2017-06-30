class AddPratnerIdToPartnerTranscript < ActiveRecord::Migration[5.1]
  def change
    add_column :partner_transcripts, :partner_id, :integer
  end
end
