class MessagesController < ApplicationController
  load_and_authorize_resource
  # GET /messages
  # GET /messages.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.json
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    if user_signed_in?
      @message.name = "#{current_user.first_name} #{current_user.last_name}"
    end
    if keyholder_signed_in?
      @message.name = "#{current_keyholder.first_name} #{current_keyholder.last_name}"
    end
    @message.message_board_id = @access_user.message_board.id 
    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render json: @message, status: :created, location: @message }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /messages/1
  # PUT /messages/1.json
  def update

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
      format.js
    end
  end
end
