
class EventsController < ApplicationController
  
  respond_to :json, :html, :xml
  load_and_authorize_resource :except => [:myevents]
  before_filter :authorize, only: :myevents
  # GET /events
  # GET /events.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  
  def myevents
    @events = @access_user.events
    respond_with @users
  end

  # GET /events/1
  # GET /events/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /events
  # POST /events.json
  def create
      @timeline = @access_user.timeline
      @event.timeline_id = @access_user.timeline.id 

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event.timeline, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
        format.js 
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.js 
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event.timeline, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy

    respond_to do |format|
      format.html { redirect_to current_user.timeline, notice: 'Event was successfully removed.' }
      format.json { head :no_content }
      format.js
    end
  end
end
