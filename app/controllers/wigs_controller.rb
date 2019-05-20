class WigsController < ApplicationController
  def index
    @wigs = Wig.all
  end

  def new
    @wig = Wig.new
  end

  def create
    @wig = Wig.new(wig_params)

    if @wig.save
      redirect_to @wig
    else
      render :new
    end
  end

  def show
    @wig = Wig.find(params[:id])
  end

  def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy

    redirect_to wigs_path
  end
end
