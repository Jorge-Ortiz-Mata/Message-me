class PagesController < ApplicationController
  before_action :require_user
  def home
    @messages = Message.all
    @message = Message.new
  end
end
