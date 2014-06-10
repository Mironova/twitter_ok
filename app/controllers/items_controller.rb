class ItemsController < ApplicationController

  def index
    @items = Item.all
    #render text: @items.map { |i| "#{i.name}: #{i.price}" }.join('<br/>')
  end

  def show
    unless @item = Item.where(id: params[:id]).first
      render text: "page not found", status: 404
    end
  end

  def edit
  end

  def new
  end

  def create
    @item = Item.create(params[:item])
    render text: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"
  end

  def update
  end

  def destroy
  end

end
