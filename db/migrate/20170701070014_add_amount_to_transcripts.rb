class AddAmountToTranscripts < ActiveRecord::Migration[5.1]
  def change
    add_column :transcripts, :amount, :float, default:Null
  end
end
