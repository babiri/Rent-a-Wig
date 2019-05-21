class WigsController < ApplicationController
  # before_action find_wig, only [:show, :destroy]
  # display list of all wigs
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @wigs = policy_scope(Wig).all
  end

  # Display a specific wig
  def show
    @wig = Wig.find(params[:id])
    authorize @wig
  end

  # return HTML form for creating new wig
  def new
    @wig = Wig.new
    authorize @wig
  end

  # create a new wig
  def create
    @wig = Wig.new(wig_params)
    authorize @wig

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
    authorize @wig
    @wig.update(wig_params)
    redirect_to wig_path(@wig)
  end

  # Delete a spicific wig
  def destroy
    @wig = Wig.find(params[:id])
    authorize @wig # will test the policy, if the user is the owner of the wig
    @wig.destroy # if true, allows destroy
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
