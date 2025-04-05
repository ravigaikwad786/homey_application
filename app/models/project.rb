class Project < ApplicationRecord
   has_many :conversation_entries, dependent: :destroy
end
