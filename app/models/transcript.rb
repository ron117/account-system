class Transcript < ApplicationRecord
  validates_presence_of :credit,:if => "debit.blank?"
validates_presence_of :debit, :if => "credit.blank?"
end
