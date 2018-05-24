class OverviewsController < ApplicationController
  def index
		
  end

  def login
  end

  def create
		function = params[:function]
		`python3 ~/pyscripts/test.py #{function}`
  end
end
