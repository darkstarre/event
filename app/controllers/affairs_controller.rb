class AffairsController < ApplicationController

 http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @affairs = Affair.all
  end

  def show
    @affair = Affair.find(params[:id])
  end

  def new
    @affair = Affair.new
  end

  def edit
    @affair = Affair.find(params[:id])
  end

  def create
    @affair = Affair.new(affair_params)

    if @affair.save
      redirect_to @affair
    else
      render 'new'
    end
  end

  def update
    @affair = Affair.find(params[:id])

    if @affair.update(affair_params)
      redirect_to @affair
    else
      render 'edit'
    end
  end

  def destroy
    @affair = Affair.find(params[:id])
    @affair.destroy

    redirect_to affairs_path
  end

  private
    def affair_params
      params.require(:affair).permit(:title,:datetime,:text,:text)
    end
end
