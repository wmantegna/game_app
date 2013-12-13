class SecretNumberController < ApplicationController
	def index

	end
	def show
		@number = rand(5) + 1
		@guess = params[:id].to_i
		if @guess != @number
			redirect_to secret_number_path
		end
	end
end