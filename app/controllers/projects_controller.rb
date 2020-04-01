class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
  end

  def dashboard
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all()  
    end
  end

  def create
    
    @project = Project.new(name: params[:name], description: params[:description], start_date: params[:fecha_inicio], end_date: params[:fecha_fin])
    @project.save
  end
end
