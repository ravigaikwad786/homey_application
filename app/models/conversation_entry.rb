class ConversationEntry < ApplicationRecord
  belongs_to :project
  belongs_to :user

  enum entry_type: { comment: "comment", status: "status" }

  validates :content, presence: true
end
