class DenimsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @denims = Denim.all
  end

  def new
    @denim = Denim.new
  end

  def create
    denim  =  Denim.new(denim_params)
    denim.user_id = current_user.id
    if denim.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @denim= Denim.find(params[:id])
  end

  def show
    @denim= Denim.find(params[:id])
  end
  
  def update
    denim = Denim.find(params[:id])
    if denim.update(denim_params)
      redirect_to :action => "show", :id => denim.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    denim = Denim.find(params[:id])
    denim.destroy
    redirect_to action: :index
  end

  private
  def denim_params
    params.require(:denim).permit(:body, :image)
  end
end
