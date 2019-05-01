class CupsController < ApplicationController
  def index
    @cups = Cup.all
  end

  def show
    @cup = Cup.find(params[:id])
  end

  def new
    @cup = Cup.new
  end

  def create
    @cup = Cup.create(cup_params)
    if @cup.valid?
      flash[:message] = "Created Successfully!"
      redirect_to @cup
    else
      flash[:message] = "#{@cup.errors.full_messages[0]}"
      render :new
    end

  end

  def edit
    @cup = Cup.find(params[:id])

  end

  def update
    @cup = Cup.find(params[:id])
    @cup.update(cup_params)
    redirect_to @cup
  end

  def destroy
    @cup = Cup.find(params[:id])
    @cup.destroy
    redirect_to cups_path
  end
  private
    def cup_params
      params.require(:cup).permit(:name, :size, :owner_id)
    end
end
