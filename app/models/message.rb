class Message < ApplicationRecord
    belongs_to :user
    after_commit on: :create do
        broadcast_append_to(
            @messages_channel,
            partial: "messages/message",
            locals: {message: self},
            target: "messages"
        )
    end
end
