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
  
end