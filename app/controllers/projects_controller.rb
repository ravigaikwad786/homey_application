class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @conversation_entries = @project.conversation_entries.order(created_at: :asc)
    @new_entry = ConversationEntry.new
  end
end
