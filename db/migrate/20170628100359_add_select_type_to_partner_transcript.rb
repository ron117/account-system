class AddSelectTypeToPartnerTranscript < ActiveRecord::Migration[5.1]
  def change
    add_column :partner_transcripts, :select_type, :boolean
  end
end
