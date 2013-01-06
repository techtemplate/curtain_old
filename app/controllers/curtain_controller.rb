class CurtainController < ApplicationController
  # GET /locations
  def index
    @customer = Customer.all(:name => request.subdomain).first

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
