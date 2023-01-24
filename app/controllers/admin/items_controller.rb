class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(product.params)
      if @item.save
        redirect_to admin_items_path
      else
        render index
      end 
  end 
  
  def show
  end

  def index
  end

  def edit
  end
end
