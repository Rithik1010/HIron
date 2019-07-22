class PartnersController < ApplicationController
  def create
  end
  
  def show
    @partner = Partner.find(params[:id])
  end
end
