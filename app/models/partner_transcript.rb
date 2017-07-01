class PartnerTranscript < ApplicationRecord
  belongs_to :partner
  def sum(*args)
    calculate(:sum, *args)
  end
end
