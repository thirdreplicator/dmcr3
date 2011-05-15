class WidgetsController < ApplicationController
  def index
  end

  def new
    @widget = Widget.new
  end
  
  def create
    @widget = Widget.create!( params[:widget] )
    if @widget
      redirect_to @widget
    end
  end
  
  def show
    @widget = Widget.find(params[:id])
  end
end
