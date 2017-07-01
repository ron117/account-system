class Transcript < ApplicationRecord
    @transcripts = Transcript.where(:status => "active")
end
