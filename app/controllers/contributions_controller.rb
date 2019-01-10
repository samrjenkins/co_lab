class ContributionsController < ApplicationController
  def new
    @contribution = Contribution.new
    @project = Project.find(params[:project_id])
  end
  def create
    @contribution = Contribution.new(contribution_params)
    @contribution.project = Project.find(params[:project_id])
    @contribution.save
    redirect_to project_contribution_path(@contribution.project, @contribution)
  end

  private

  def contribution_params
    params.require(:contribution).permit(:headline, :description)
  end
end
