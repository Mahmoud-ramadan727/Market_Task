class ItemsController < ApplicationController
    def new       
    end

    def index
        @items = Item.all
    end
 
     
     
    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to action: "index"    
    end

    private
        def item_params
            params.require(:item).permit( :price, :stock, :brand,  :description, :exp_date, :min_allowed_stock, {images: []})
        end
end
