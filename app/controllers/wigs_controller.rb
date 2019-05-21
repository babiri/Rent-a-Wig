class WigsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @wigs = policy_scope(Wig).all
  end

  def new
    @wig = Wig.new
    authorize @wig
  end

  def create
    @wig = Wig.new(wig_params)
    authorize @wig

    if @wig.save
      redirect_to @wig
    else
      render :new
    end
  end

  def show
    @wig = Wig.find(params[:id])
    authorize @wig
  end

  def destroy
    @wig = Wig.find(params[:id])
    authorize @wig #will test the policy, if the user is the owner of the wig
    @wig.destroy # if true, allows destroy
    redirect_to wigs_path
  end

  #missing edit/update methods

  private

  def wig_params
  end
end
