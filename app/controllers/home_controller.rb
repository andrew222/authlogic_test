class HomeController < ApplicationController
  before_filter :require_user
  def welcome
    
  end
end
