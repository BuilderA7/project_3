class AdminsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  # GET /Admins
  # GET /Admins.json
  def index
    @Admins = Admin.all
  end

  # GET /Admins/1
  # GET /Admins/1.json
  def show
    @Admins = Admin.all
  end

  # GET /Admins/new
  def new
    @admin = Admin.new
  end

  # GET /Admins/1/edit
  def edit
  end

  # POST /Admins
  # POST /Admins.json
  def create
    @admin = admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Admins/1
  # PATCH/PUT /Admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Admins/1
  # DELETE /Admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to Admins_url, notice: 'admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:instructor).permit(:user, :password)
    end
end
