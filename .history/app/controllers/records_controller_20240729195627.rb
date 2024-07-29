class RecordsController < ApplicationController
  def index
    @records = Record.all
  end
  # def show
  #   @record = Record.find(params[:id])
  # end
  # def new
  #   @record = Record.new
  # end
  # def create
  #   @record = Record.new(record_params)

  #   if @record.save
  #     redirect_to @record
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
  # def edit
  #   @record = Record.find(params[:id])
  # end
  # def update
  #   @record = Record.find(params[:id])

  #   if @record.update(record_params)
  #     redirect_to @record, notice: "Record was successfully updated."
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end
  # def destroy
  #   @record = Record.find(params[:id])
  #   @record.destroy
  #   if @record.destroy
  #     redirect_to records_path, notice: "Record was successfully destroyed."
  #   end
  # end
end
