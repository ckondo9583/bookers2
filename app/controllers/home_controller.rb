class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:about] # 認証をスキップする
  
  def top
  end

  def about
  end
end
