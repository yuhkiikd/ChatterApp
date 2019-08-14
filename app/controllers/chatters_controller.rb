class ChattersController < ApplicationController
  before_action :chatter_order, only: [:index, :create]

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

  private

  def chatter_params
    params.require(:chatter).permit(:content)
  end

  def chatter_order
    @chatters = Chatter.all.order('id DESC')
  end

end
