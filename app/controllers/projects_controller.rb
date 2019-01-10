class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.save
    redirect_to project_path(@project)
  end
  def index
    @projects = Project.all
  end
  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:title)
  end
end
