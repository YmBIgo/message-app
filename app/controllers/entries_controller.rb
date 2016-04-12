class EntriesController < ApplicationController

  before_action :authenticate_user!, :only => [:create, :destroy]

  def create
  end

end
