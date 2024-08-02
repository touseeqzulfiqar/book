class RecordsController < ApplicationController
  # Devise
  before_action :authenticate_user!
  # cancancan
  load_and_authorize_resource
  def index
    @pagy ,@records = pagy(Record.all, items: 10)
  end
  def show
    @record = Record.find(params[:id])
  end
  def new
    @record = Record.new
  end
  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to @record
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @record = Record.find(params[:id])
  end
  def update
    @record = Record.find(params[:id])

    if @record.update(record_params)
      redirect_to @record, notice: "Record was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    if @record.destroy
      redirect_to records_path, notice: "Record was successfully destroyed."
    end
  end
  def record_params
    params.require(:record).permit(:title, :author, :published_at)
  end
end
