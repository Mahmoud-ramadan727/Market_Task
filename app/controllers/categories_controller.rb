class CategoriesController < ApplicationController
    
    def new 
        authorize! :manage, Category

    end 

    def index
        @categories = Category.all 
    end 

    def create
        authorize! :manage, Category

        @category = Category.new(category_params)
        @category.save
        redirect_to action: "index"    
    end

    private
        def category_params
            params.require(:category).permit(:name, :category_id)
        end
        
end
