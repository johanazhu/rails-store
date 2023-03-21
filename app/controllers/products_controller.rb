class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end
    
    def add_to_cart 
        @product = Product.find(params[:id])

        current_user.add_production_to_cart(@product)
        flash[:notice] = "成功加入购物车"
        redirect_back(fallback_location: root_path)
    end
end
