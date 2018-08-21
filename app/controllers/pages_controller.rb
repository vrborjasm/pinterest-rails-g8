class PagesController < ApplicationController
	before_action :set_pin

  def index
		@pins = Pin.all
  end

	private

    # Use callbacks to share common setup or constraints between actions.
  	def set_pin
  		@pin = Pin.find_by(id: [params[:id], params[:pin_id]])
  	end

end
