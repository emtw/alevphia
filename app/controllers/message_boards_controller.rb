class MessageBoardsController < ApplicationController
  # GET /message_boards
  # GET /message_boards.json
  def index
    @message_boards = MessageBoard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @message_boards }
    end
  end

  # GET /message_boards/1
  # GET /message_boards/1.json
  def show
    @message_board = MessageBoard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message_board }
    end
  end

  # GET /message_boards/new
  # GET /message_boards/new.json
  def new
    @message_board = MessageBoard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message_board }
    end
  end

  # GET /message_boards/1/edit
  def edit
    @message_board = MessageBoard.find(params[:id])
  end

  # POST /message_boards
  # POST /message_boards.json
  def create
    @message_board = MessageBoard.new(params[:message_board])

    respond_to do |format|
      if @message_board.save
        format.html { redirect_to @message_board, notice: 'Message board was successfully created.' }
        format.json { render json: @message_board, status: :created, location: @message_board }
      else
        format.html { render action: "new" }
        format.json { render json: @message_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /message_boards/1
  # PUT /message_boards/1.json
  def update
    @message_board = MessageBoard.find(params[:id])

    respond_to do |format|
      if @message_board.update_attributes(params[:message_board])
        format.html { redirect_to @message_board, notice: 'Message board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_boards/1
  # DELETE /message_boards/1.json
  def destroy
    @message_board = MessageBoard.find(params[:id])
    @message_board.destroy

    respond_to do |format|
      format.html { redirect_to message_boards_url }
      format.json { head :no_content }
    end
  end
end
