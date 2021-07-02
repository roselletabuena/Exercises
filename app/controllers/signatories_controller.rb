class SignatoriesController < ApplicationController

	def index
		@signatories = Signatory.all
	end 

	def new 
		@signatory = Signatory.new
	end

	def show
		@signatory = Signatory.find(params[:id])
	end

	def edit
		@signatory = Signatory.find(params[:id])
	end	

	def update 
		@signatory = Signatory.find(params[:id])

		respond_to do |format| 
			if @signatory.update(signatory_params)
				format.html { redirect_to signatories_path, notice: "Your signatory is sucessfully updated."}
			else
				format.html { render :edit, status: :unprocessable_entity }
			end
		end
	end	

	def create 
		@signatory = Signatory.new(signatory_params)

		respond_to do |format|
			if @signatory.save
				format.html { redirect_to signatories_path,  notice: "Signatory created succesfully"}
			else 
				format.html  { render :new, status: :unprocessable_entity }
			end
		end
	end

	def destroy 
		@signatory = Signatory.find(params[:id])
		@signatory.destroy 

    respond_to do |format|
      format.html { redirect_to signatories_path, notice: "Signatory was successfully destroyed." }
    end
	end
		
	def signatory_params
		params.require(:signatory).permit(:first_name, :last_name, :middle_name, :position, :department)
	end
end
