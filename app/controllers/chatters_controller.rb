class ChattersController < ApplicationController
  before_action :chatter_order, only: [:index, :create]
  before_action :set_chatter, only: [:edit, :update, :destroy]

  def index
    @chatter = Chatter.new
  end

  def create
    @chatter = Chatter.create(chatter_params)
    if @chatter.save
      redirect_to root_path, notice: "ツイートを投稿しました！"
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @chatter.update(chatter_params)
      redirect_to chatters_path, notice: "ツイートを更新しました！"
    else
      render :edit
    end
  end

  def destroy
    @chatter.destroy
    redirect_to root_path, notice: "ツイートを削除しました！"
  end

  private

  def set_chatter
    @chatter = Chatter.find(params[:id])
  end

  def chatter_params
    params.require(:chatter).permit(:content)
  end

  def chatter_order
    @chatters = Chatter.all.order('id DESC')
  end

end
