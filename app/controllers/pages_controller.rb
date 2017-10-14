class PagesController < ApplicationController
  def home
    @username = params[:username]
    @username = params[:password]
  end
  
  def show
    @username = params[:username]
    @password = params[:password]
    redirect_to "https://layla.amazon.com/spa/skill/account-linking-status.html?vendorId=M3STMGS1241AEG#state=xyz&access_token=" + @username.to_s + "Q" + @password.to_s + "&token_type=Bearer"
  end
    
end