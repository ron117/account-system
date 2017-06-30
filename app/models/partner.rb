class Partner < ApplicationRecord
  has_many :partner_transcript
  validates_presence_of :phone, numercility: true
  validates_length_of :phone, :minimum => 10, :maximum => 10
  validates :email, email_format: { message: "doesn't look like an email address" }
end
