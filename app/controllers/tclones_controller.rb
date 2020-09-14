class TclonesController < ApplicationController

  def new
    @tclone = Tclone.new
  end

  def create
    @tclone = Tclone.new(tclone_params)
    @tclone.save
    redirect_to tclones_path, notice: "ツイートしました"
  end

  def index
    @tclones = Tclone.all
  end

  def confirm
    @tclone = Tclone.new(tclone_params)
  end

  def edit
    @tclone = Tclone.find(params[:id])
  end

  def update
    @tclone = Tclone.find(params[:id])
    @tclone.update(tclone_params)
    redirect_to tclones_path, notice: "編集しました"
  end

  private
  def tclone_params
    params.require(:tclone).permit(:content)
  end

end
