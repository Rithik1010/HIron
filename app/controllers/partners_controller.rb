class PartnersController < ApplicationController
  def create
  end
  
  def show
    @partner = Partner.find(params[:id])
    if @partner.reviews.blank?
      @average_review = 0
    else
      @average_review = @partner.reviews.average(:rating).round(2)
    end
  end
end

