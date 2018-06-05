class OverviewsController < ApplicationController
  def index
		@interfaces_amount = 3
  end

  def login
		redirect_to overviews_index_url if !current_account.nil?
		@account = Account.new
		@accounts = Account.all
  end

	def checkCreds
		@account_users = Account.where(name: params[:name])
		@account_users.each do |a|
			cookies.permanent[:account_id] = a.auth_token
			
			redirect_to overviews_index_url
		end	
	end

  def create
		function = params[:function]
		`python3 pyscripts/test.py #{function}`
  end
end
