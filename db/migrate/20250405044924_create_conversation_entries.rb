class CreateConversationEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :conversation_entries do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.string :entry_type

      t.timestamps
    end
  end
end
