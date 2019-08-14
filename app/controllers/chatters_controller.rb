class ChattersController < ApplicationController
  def index
    @chatters = Chatter.all
    @chatter = Chatter.new
  end

  def create
    Chatter.create(chatter_params)
    redirect_to root_path
  end

  private

  def chatter_params
    params.require(:chatter).permit(:content)
  end

end
