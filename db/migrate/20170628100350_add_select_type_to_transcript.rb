class AddSelectTypeToTranscript < ActiveRecord::Migration[5.1]
  def change
    add_column :transcripts, :select_type, :boolean
  end
end
