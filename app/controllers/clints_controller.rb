class ClintsController < ApplicationController
  before_action :set_clint, only: [:show, :edit, :update, :destroy]

  # GET /clints
  # GET /clints.json
  def index
    @clints = Clint.all
  end

  # GET /clints/1
  # GET /clints/1.json
  def show
  end

  # GET /clints/new
  def new
    @clint = Clint.new
  end

  # GET /clints/1/edit
  def edit
  end

  # POST /clints
  # POST /clints.json
  def create
    @clint = Clint.new(clint_params)
    
    respond_to do |format|
      if @clint.save
        format.html { redirect_to @clint, notice: 'Clint was successfully created.' }
        format.json { render :show, status: :created, location: @clint }
      else
        format.html { render :new }
        format.json { render json: @clint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clints/1
  # PATCH/PUT /clints/1.json
  def update
    respond_to do |format|
      if @clint.update(clint_params)
        format.html { redirect_to @clint, notice: 'Clint was successfully updated.' }
        format.json { render :show, status: :ok, location: @clint }
      else
        format.html { render :edit }
        format.json { render json: @clint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clints/1
  # DELETE /clints/1.json
  def destroy
    @clint.destroy
    respond_to do |format|
      format.html { redirect_to clints_url, notice: 'Clint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clint
      @clint = Clint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clint_params
      params.fetch(:clint, {})
    end
end
