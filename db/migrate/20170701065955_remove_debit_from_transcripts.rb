class RemoveDebitFromTranscripts < ActiveRecord::Migration[5.1]
  def change
    remove_column :transcripts, :debit, :integer
  end
end
