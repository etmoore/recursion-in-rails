class PagesController < ApplicationController

  def index
    @pages = Page.where(page_id: nil)
  end

  def show
    @page = Page.find(params[:id])
  end

end
