class PartnerTranscript < ApplicationRecord
  belongs_to :partner
  def sum(*args)
    calculate(:sum, *args)
  end
  
  validates_presence_of :credit, :if => "debit.blank?"
  validates_presence_of :debit, :if  => "credit.blank?"
end
