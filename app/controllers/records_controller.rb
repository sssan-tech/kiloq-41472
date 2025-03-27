class RecordsController < ApplicationController
  def index
    @records = Record.all.includes(:category)
  end

  def new
    @record= Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
      render :new, status: :unprocessable_entity
    end
  end

    private

  def record_params
    params.require(:record).permit(:recorded_at, :category_id)
  end
end
