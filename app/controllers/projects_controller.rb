class ProjectsController < ApplicationController
  layout "project"

  def index
    @projects = Project.all
    @page_title = "Tristan's Projects"
  end

   def angular
     @angular_projects = Project.angular_js_projects
   end

  def show
    @project = Project.find(params[:id])
    
    @page_title = @project.title
    @seo_keywords = @project.title
  end

  def new
    @project = Project.new
    3.times { @project.technologies.build }

    @page_title = "New Project"
  end

  def edit
    @project = Project.find(params[:id])

    @page_title = "Edit #{@project.title }"
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Project is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @project = Project.find(params[:id])

    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was removed.' }
    end
  end

  private
    def set_project
      #code
    end

    def project_params
      params.require(:project).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                    )
    end

end
