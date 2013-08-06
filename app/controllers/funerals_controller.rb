class FuneralsController < ApplicationController
  load_and_authorize_resource
  # GET /funerals
  # GET /funerals.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funerals }
    end
  end

  # GET /funerals/1
  # GET /funerals/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funeral }
    end
  end

  # GET /funerals/new
  # GET /funerals/new.json
  def new
    if current_user.funeral.present?
      link = "<a href=\"/funerals/#{current_user.funeral.id}/edit\">edit</a>" 
      flash[:notice] = "You have already set your funeral preferences for your account. Please #{link} your existing preferences.".html_safe
      redirect_to :controller => "users", :id => current_user.id, :action => "myaccount"
    else
      @funeral = Funeral.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @funeral }
      end
    end
  end

  # GET /funerals/1/edit
  def edit
  end

  # POST /funerals
  # POST /funerals.json
 
  def create
    
    @user = current_user
    @funeral = Funeral.new(params[:funeral])
    @funeral.user_id = @user.id
    
    if @user.funeral.blank?
      respond_to do |format|
        if @funeral.save
          format.html { redirect_to @funeral, notice: 'Funeral was successfully created.' }
          format.json { render json: @funeral, status: :created, location: @funeral }
        else
          format.html { render action: "new" }
          format.json { render json: @funeral.errors, status: :unprocessable_entity }
        end
      end
    else
      link = "<a href=\"/funerals/#{current_user.funeral.id}/edit\">edit</a>" 
      flash[:notice] = "You have already set your funeral preferences for your account. Please #{link} your existing preferences.".html_safe
      redirect_to :controller => "users", :id => current_user.id, :action => "myaccount"
    end
    
  end

  # PUT /funerals/1
  # PUT /funerals/1.json
  def update

    respond_to do |format|
      if @funeral.update_attributes(params[:funeral])
        format.html { redirect_to @funeral, notice: 'Funeral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funerals/1
  # DELETE /funerals/1.json
  def destroy
    @funeral.destroy

    respond_to do |format|
      format.html { redirect_to funerals_url }
      format.json { head :no_content }
    end
  end
end
