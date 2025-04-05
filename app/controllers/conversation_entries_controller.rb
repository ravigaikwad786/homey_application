class ConversationEntriesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @entry = @project.conversation_entries.build(entry_params)
    @entry.user = User.first

    if @entry.status?
      @project.update(status: @entry.content)
    end

    if @entry.save
      redirect_to project_path(@project), notice: "Entry added"
    else
      redirect_to project_path(@project), alert: "Could not add entry"
    end
  end

  private

  def entry_params
    params.require(:conversation_entry).permit(:content, :entry_type)
  end
end
