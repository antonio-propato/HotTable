class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  def index
    @clients = Client.order('LOWER(first_name)')
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client, notice: 'Client was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to @client, notice: 'Client was successfully updated.'
    else
      render :edit
    end
  end

  def confirm_destroy
    # This action simply renders the confirmation view
  end

  def destroy
    @client.destroy
    redirect_to clients_path, notice: 'Client was successfully deleted.'
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :telephone_number, :email, :DOB, :dietary_requirement, :table_preferences)
  end
end
