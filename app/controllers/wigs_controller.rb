class WigsController < ApplicationController
  # before_action find_wig, only [:show, :destroy]
  # display list of all wigs
  def index
    @wigs = Wig.all
  end

  # Display a specific wig
  def show
    @wig = Wig.find(params[:id])
  end

  # return HTML form for creating new wig
  def new
    @wig = Wig.new
  end

  # create a new wig
  def create
    @wig = Wig.new(wig_params)

    if @wig.save
      redirect_to wig_path(@wig)
    else
      render :new
    end
  end

  def edit
    @wig = Wig.find(params[:id])
  end

  def update
    @wig = Wig.find(params[:id])
    @wig.update(wig_params)
    redirect_to wig_path(@wig)
  end

  # Delete a spicific wig
  def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy

    redirect_to wigs_path
  end

  private

  # def find_wig
  #   @wig = Wig.find(params[:id])
  # end

  def wig_params
    params.require(:wig).permit(:size, :color, :style, :name, :price)
  end
end
