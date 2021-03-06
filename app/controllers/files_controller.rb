class FilesController < ApplicationController
  def new
		@sound = Sound.new
		@sound_files = current_account.sounds.all
		p current_account
  end

	def create
		if params[:sound_file]
			cookies[:current_sound] = params[:sound_file]
			redirect_to overviews_index_url
		else
			i = params[:sound][:sound_file]
			dir = Rails.root.join('public', 'uploads', i.original_filename)
			File.open(dir, 'wb') do |f|
  			f.write(i.read)
			end
			@account = current_account
			@sound = @account.sounds.new(sound_params)
			@sound.path = dir
			@sound.name = i.original_filename
			if(@sound.save)
				redirect_to overviews_index_url
			else
				render 'new'
			end
		end
	end


	def sound_params
  	params.require(:sound).permit(:name, :path, :account_id)
  end

end
