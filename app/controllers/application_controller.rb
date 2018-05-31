class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
  helper_method :current_account
  
  def current_account
  	if !cookies[:account_id].nil?
  		Account.find_by_auth_token(cookies[:account_id])
		else
			nil
		end
	end
end
