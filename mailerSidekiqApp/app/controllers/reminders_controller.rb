class RemindersController < ApplicationController
	def index
	end

	def send
		content = JSON.generate({ 'user'=>params[:user],
															'email'=> params[:email],
															'message' => params[:message],
															'friend'=> params[:friend]})
		if PostmanWorker.perform_async(content, 30)
			redirect_to :root
		else 
			flash.now[:alert] = "Reminder not sent!"
			render :root
		end
	end

end
