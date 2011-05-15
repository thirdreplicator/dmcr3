class WidgetsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]  

  def index
    @widgets = Widget.all
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
