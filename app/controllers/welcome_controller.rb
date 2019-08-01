class WelcomeController < ApplicationController
  def index
  	@early_adoptor = EarlyAdopter.new
  end

  def create
  	return @refresh = true if adaptor_params[:email].blank?
  	early_adoptor = EarlyAdopter.new(adaptor_params)
  	if early_adoptor.save
  		@refresh = true
  		@early_adoptor = EarlyAdopter.new
  	else
  		flash[:error] = @early_adoptor.errors.full_messages.join(',')
  	end
  end

  private
  	def adaptor_params
  		params.require(:early_adopter).permit(:email)
  	end
end
