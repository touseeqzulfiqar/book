class RecordController < ApplicationController
  def index
    @records = Record.all
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
      redirect_to @record, notice: "Record was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
end
