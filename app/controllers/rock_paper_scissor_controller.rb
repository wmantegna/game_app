class RockPaperScissorController < ApplicationController
	def index

	end
	def show
		#1 = rock
		#2 = paper
		#3 = scissors

		@number = rand(3) + 1
		@guess = params[:id].to_i

		if @number == @guess
			@verdict = "tied"
		else
			#user chose rock
			if @guess == 1
				if @number == 2		#rock loses to paper
					@verdict = "lose"
				elsif @number == 3	#rock beats scissors
					@verdict = "win"
				end
			end

			#user chose paper
			if @guess == 2
				if @number == 3		#paper loses to scissors
					@verdict = "lose"
				elsif @number == 1	#paper beats rock
					@verdict = "win"
				end
			end

			#user chose scissors
			if @guess == 3
				if @number == 1		#scissors loses to rock
					@verdict = "lose"
				elsif @number == 3	#scissors beats paper
					@verdict = "win"
				end
			end
		end
	end
end