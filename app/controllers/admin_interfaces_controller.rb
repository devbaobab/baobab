class AdminInterfacesController < ApplicationController
  # GET /admin_interfaces
  # GET /admin_interfaces.json
  before_filter :authenticate_user!
  
  def index
    #@admin_interfaces = AdminInterface.all
    @courses = Course.all
    @categories = Category.all
    @groups = Group.all
    
    respond_to do |format|
      format.html # index.html.erb
    end
    
  end

  # GET /admin_interfaces/1
  # GET /admin_interfaces/1.json
  def show
    @admin_interface = AdminInterface.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_interface }
    end
  end

  # GET /admin_interfaces/new
  # GET /admin_interfaces/new.json
  def new
    @admin_interface = AdminInterface.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_interface }
    end
  end

  # GET /admin_interfaces/1/edit
  def edit
    @admin_interface = AdminInterface.find(params[:id])
  end

  # POST /admin_interfaces
  # POST /admin_interfaces.json
  def create
    @admin_interface = AdminInterface.new(params[:admin_interface])

    respond_to do |format|
      if @admin_interface.save
        format.html { redirect_to @admin_interface, notice: 'Admin interface was successfully created.' }
        format.json { render json: @admin_interface, status: :created, location: @admin_interface }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_interfaces/1
  # PUT /admin_interfaces/1.json
  def update
    @admin_interface = AdminInterface.find(params[:id])

    respond_to do |format|
      if @admin_interface.update_attributes(params[:admin_interface])
        format.html { redirect_to @admin_interface, notice: 'Admin interface was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_interfaces/1
  # DELETE /admin_interfaces/1.json
  def destroy
    @admin_interface = AdminInterface.find(params[:id])
    @admin_interface.destroy

    respond_to do |format|
      format.html { redirect_to admin_interfaces_url }
      format.json { head :no_content }
    end
  end
end
