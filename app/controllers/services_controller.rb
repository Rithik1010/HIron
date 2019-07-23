class ServicesController < ApplicationController

  def index
    @services = Service.paginate(page: params[:page])
  end

  def show
    @service = Service.find(params[:id])
    @partners = @service.partners
  end
end
