class KeyholdersController < ApplicationController
  load_and_authorize_resource :except => [:myaccount]
  before_filter :authorize_keyholder, only: [:myaccount]
  # GET /keyholders
  # GET /keyholders.json
  def index
    @keyholders = Keyholder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @keyholders }
    end
  end

  # GET /keyholders/1
  # GET /keyholders/1.json
  def show
    @keyholder = Keyholder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @keyholder }
    end
  end

  # GET /keyholders/new
  # GET /keyholders/new.json
  def new
    @keyholder = Keyholder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @keyholder }
    end
  end

  # GET /keyholders/1/edit
  def edit
    @keyholder = Keyholder.find(params[:id])
  end

  # POST /keyholders
  # POST /keyholders.json
  def create
    @keyholder = Keyholder.new(params[:keyholder])

    respond_to do |format|
      if @keyholder.save
        format.html { redirect_to @keyholder, notice: 'Keyholder was successfully created.' }
        format.json { render json: @keyholder, status: :created, location: @keyholder }
      else
        format.html { render action: "new" }
        format.json { render json: @keyholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /keyholders/1
  # PUT /keyholders/1.json
  def update
    @keyholder = Keyholder.find(params[:id])

    respond_to do |format|
      if @keyholder.update_attributes(params[:keyholder])
        format.html { redirect_to @keyholder, notice: 'Keyholder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @keyholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keyholders/1
  # DELETE /keyholders/1.json
  def destroy
    @keyholder = Keyholder.find(params[:id])
    @user = @keyholder.user
    @keyholder.destroy
    @user.keyholder_id = nil
    @user.save

    respond_to do |format|
      format.html { redirect_to keyholders_url }
      format.json { head :no_content }
    end
  end
  
  def myaccount
    @keyholder = Keyholder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
end
