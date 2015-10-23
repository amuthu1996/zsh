class ClsController < ApplicationController
  before_action :set_cl, only: [:show, :edit, :update, :destroy]

  # GET /cls
  # GET /cls.json
  def index
    @cls = Cl.all
  end

  # GET /cls/1
  # GET /cls/1.json
  def show
  end

  # GET /cls/new
  def new
    @cl = Cl.new
  end

  # GET /cls/1/edit
  def edit
  end

  # POST /cls
  # POST /cls.json
  def create
    @cl = Cl.new(cl_params)

    respond_to do |format|
      if @cl.save
        format.html { redirect_to @cl, notice: 'Cl was successfully created.' }
        format.json { render :show, status: :created, location: @cl }
      else
        format.html { render :new }
        format.json { render json: @cl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cls/1
  # PATCH/PUT /cls/1.json
  def update
    respond_to do |format|
      if @cl.update(cl_params)
        format.html { redirect_to @cl, notice: 'Cl was successfully updated.' }
        format.json { render :show, status: :ok, location: @cl }
      else
        format.html { render :edit }
        format.json { render json: @cl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cls/1
  # DELETE /cls/1.json
  def destroy
    @cl.destroy
    respond_to do |format|
      format.html { redirect_to cls_url, notice: 'Cl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cl
      @cl = Cl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cl_params
      params.require(:cl).permit(:cid, :std, :sec, :tid, :room)
    end
end
