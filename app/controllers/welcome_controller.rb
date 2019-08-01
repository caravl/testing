class WelcomeController < ApplicationController
  def index
  	@early_adoptor = EarlyAdopter.new
  end

  def create
  	return @refresh = true if adaptor_params[:email].blank?
  	if EarlyAdopter.exists?(email: adaptor_params[:email])
  		flash[:error] = I18n.t 'messages.errors.duplicate_email'
  	else
	  	early_adoptor = EarlyAdopter.new(adaptor_params)
	  	if early_adoptor.save
	  		@refresh = true
	  		@early_adoptor = EarlyAdopter.new
	  		flash[:error] = I18n.t 'messages.success.adopter_create'
	  	else
	  		flash[:error] = @early_adoptor.errors.full_messages.join(',')
	  	end
	  end
  end

  private
  	def adaptor_params
  		params.require(:early_adopter).permit(:email)
  	end
end
