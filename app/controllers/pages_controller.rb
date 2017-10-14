class PagesController < ApplicationController
  def home
    $state = params[:state]
    Rails.logger.debug("debug::" + $state)
  end
  
  def show
    @username = params[:username]
    @password = params[:password]
    redirect_to "https://layla.amazon.com/spa/skill/account-linking-status.html?vendorId=M3STMGS1241AEG#state=" + $state.to_s + "&access_token=" + @username.to_s + "," + @password.to_s + "&token_type=Bearer"
  end
    
end