class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /projects
  # GET /projects.json
  def index
    @project = Project.new
    if params[:noFoPage] || params[:search]
      @noFoPage = params[:noFoPage] 
    else
      @noFoPage = 3
    end
    #byebug
    if params[:search] || params[:noFoPage]
    #byebug
      if params[:search]
        @projects = Project.search(params[:search]).paginate(:page => params[:page], per_page: @noFoPage).order(sort_column + " " + sort_direction)
        @searchProjects = Project.ajax_search(params[:search])
          if @searchProjects.present? == false
            redirect_to projects_path
          end
      else
        @projects = Project.paginate(:page => params[:page], per_page: @noFoPage).order(sort_column + " " + sort_direction)
        @searchProjects = Project.paginate(:page => params[:page], per_page: @noFoPage).order(sort_column + " " + sort_direction)
      end  
      respond_to do |f|
        f.html { redirect_to @project }
        f.js { }
      end
      #byebug
    else
      @projects = Project.paginate(:page => params[:page], per_page: @noFoPage).order(sort_column + " " + sort_direction)
    end
  end
  # GET /projects/1
  # GET /projects/1.json
  def show

  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_url, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_url, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
      @pcomments = @project.p_comments.all
      #@pcomments = @project.p_comments.find(params[:id])
      #byebug
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :duration, :id, :title)
    end

    def sortable_columns
      ["name", "duration", "created_at", "updated_at"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "id"
    end

    def sort_direction
      
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
