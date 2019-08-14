class ChattersController < ApplicationController
  def index
    @chatters = Chatter.all.order('id DESC')
    @chatter = Chatter.new
  end

  def create
    @chatters = Chatter.all.order('id DESC')
    @chatter = Chatter.create(chatter_params)
    if @chatter.save
      redirect_to root_path, notice: "ツイートを投稿しました！"
    else
      render 'index'
    end
  end

  private

  def chatter_params
    params.require(:chatter).permit(:content)
  end

end
