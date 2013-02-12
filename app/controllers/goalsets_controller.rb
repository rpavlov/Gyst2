class GoalsetsController < ApplicationController
	
	def index
		render json: Goalset.all 
	end

	def show
		@goalset = Goalset.find(params[:id])
		render json: goalset
	end

	def create
		@goalset = Goalset.new(params[:goalset])

		respond_to do |format|
			if @goalset.save
				format.json { render json: @goalset, status: :created, location: @goalset }
			else
				format.json { render json: @goalset.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		@goalset = Goalset.find(params[:id])

		respond_to do |format|
			if @goalset.update_attributes(params[:goalset])
				format.json { render json: nil, status: :ok }
			else
				format.json { render json: @goalset.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@goalset = Goalset.find(params[:id])
		@goalset.destroy

		respond_to do |format|
			format.json { render json: nil, status: :ok }
		end
	end
end

