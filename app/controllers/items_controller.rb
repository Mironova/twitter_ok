class ItemsController < ApplicationController
  def index
    @items = Item.all
    render text: @items.map { |i| "#{i.name}: #{i.price}" }.join('<br/>')
  end

  def create
    p params
    render text: "Item created"
  end
end
