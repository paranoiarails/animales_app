class SubmenusController < ApplicationController
  # GET /submenus
  # GET /submenus.json
  def index
    @submenus = Submenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submenus }
    end
  end

  # GET /submenus/1
  # GET /submenus/1.json
  def show
    @submenu = Submenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submenu }
    end
  end

  # GET /submenus/new
  # GET /submenus/new.json
  def new
    @submenu = Submenu.new
    $menu=params[:id]
    @menu=$menu
 #   @zona = Zona.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submenu }
    end
  end

  # GET /submenus/1/edit
  def edit
    @submenu = Submenu.find(params[:id])
  end

  # POST /submenus
  # POST /submenus.json
  def create
    @submenu = Submenu.new(params[:submenu])
    @menu=$menu

    respond_to do |format|
      if @submenu.save
        @submenu.menu_id=@menu
	@submenu.save
        format.html { redirect_to @submenu, notice: 'Submenu was successfully created.' }
        format.json { render json: @submenu, status: :created, location: @submenu }
      else
        format.html { render action: "new" }
        format.json { render json: @submenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submenus/1
  # PUT /submenus/1.json
  def update
    @submenu = Submenu.find(params[:id])

    respond_to do |format|
      if @submenu.update_attributes(params[:submenu])
        format.html { redirect_to @submenu, notice: 'Submenu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submenus/1
  # DELETE /submenus/1.json
  def destroy
    @submenu = Submenu.find(params[:id])
    @submenu.destroy

    respond_to do |format|
      format.html { redirect_to submenus_url }
      format.json { head :no_content }
    end
  end
end
