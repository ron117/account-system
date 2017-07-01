class RemoveCreditFromTranscripts < ActiveRecord::Migration[5.1]
  def change
    remove_column :transcripts, :credit, :integer
  end
end
