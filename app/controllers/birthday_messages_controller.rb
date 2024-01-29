class BirthdayMessagesController < ApplicationController
  before_action :set_birthday_message, only: %i[ show edit update destroy ]

  # GET /birthday_messages or /birthday_messages.json
  def index
    @birthday_messages = BirthdayMessage.all
  end

  # GET /birthday_messages/1 or /birthday_messages/1.json
  def show
  end
  def birthday_lock
    # Action code here (if needed)
  end
  # GET /birthday_messages/new
  def new
    @birthday_message = BirthdayMessage.new
  end

  # GET /birthday_messages/1/edit
  def edit
  end

  # POST /birthday_messages or /birthday_messages.json
  def create
    @birthday_message = BirthdayMessage.new(birthday_message_params)

    respond_to do |format|
      if @birthday_message.save
        format.html { redirect_to birthday_message_url(@birthday_message), notice: "Birthday message was successfully created." }
        format.json { render :show, status: :created, location: @birthday_message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @birthday_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /birthday_messages/1 or /birthday_messages/1.json
  def update
    respond_to do |format|
      if @birthday_message.update(birthday_message_params)
        format.html { redirect_to birthday_message_url(@birthday_message), notice: "Birthday message was successfully updated." }
        format.json { render :show, status: :ok, location: @birthday_message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @birthday_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birthday_messages/1 or /birthday_messages/1.json
  def destroy
    @birthday_message.destroy!

    respond_to do |format|
      format.html { redirect_to birthday_messages_url, notice: "Birthday message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birthday_message
      @birthday_message = BirthdayMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def birthday_message_params
      params.require(:birthday_message).permit(:name)
    end
end
