class StandingsController < ApplicationController
  # GET /standings
  # GET /standings.xml
  def index
    @standings = Standing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standings }
    end
  end

  # GET /standings/1
  # GET /standings/1.xml
  def show
    @standing = Standing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standing }
    end
  end

  # GET /standings/new
  # GET /standings/new.xml
  def new
    @standing = Standing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standing }
    end
  end

  # GET /standings/1/edit
  def edit
    @standing = Standing.find(params[:id])
  end

  # POST /standings
  # POST /standings.xml
  def create
    @standing = Standing.new(params[:standing])

    respond_to do |format|
      if @standing.save
        format.html { redirect_to(@standing, :notice => 'Standing was successfully created.') }
        format.xml  { render :xml => @standing, :status => :created, :location => @standing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standings/1
  # PUT /standings/1.xml
  def update
    @standing = Standing.find(params[:id])

    respond_to do |format|
      if @standing.update_attributes(params[:standing])
        format.html { redirect_to(@standing, :notice => 'Standing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standings/1
  # DELETE /standings/1.xml
  def destroy
    @standing = Standing.find(params[:id])
    @standing.destroy

    respond_to do |format|
      format.html { redirect_to(standings_url) }
      format.xml  { head :ok }
    end
  end
end
