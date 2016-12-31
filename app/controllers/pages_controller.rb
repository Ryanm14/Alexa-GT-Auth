class PagesController < ApplicationController
  def home
  end
  
  def show
    @tests = Test.all
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end
    
end